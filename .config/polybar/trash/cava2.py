#!/usr/bin/python3
import os
import sys
import struct
import subprocess
import tempfile
import time

BARS_NUMBER = 10
# OUTPUT_BIT_FORMAT = "8bit"
OUTPUT_BIT_FORMAT = "16bit"
RAW_TARGET = "/tmp/cava.fifo"
# RAW_TARGET = "/dev/stdout"

conpat = """
[general]
bars = %d
[output]
method = raw
raw_target = %s
bit_format = %s
"""

BAR_CHARACTERS_COLORED = dict([
    (0, '%{F#100}▁%{F-}'),  # Zero output
    (1, '%{F#200}▁%{F-}'),
    (2, '%{F#500}▂%{F-}'),
    (3, '%{F#700}▃%{F-}'),
    (4, '%{F#900}▄%{F-}'),
    (5, '%{F#A00}▅%{F-}'),
    (6, '%{F#B00}▆%{F-}'),
    (7, '%{F#C00}▇%{F-}'),
    (8, '%{F#F00}█%{F-}'),  # Highest output
])

BAR_CHARACTERS = dict([
    (0, '▁'),  # Zero output
    (1, '▁'),
    (2, '▂'),
    (3, '▃'),
    (4, '▄'),
    (5, '▅'),
    (6, '▆'),
    (7, '▇'),
    (8, '█'),  # Highest output
])

config = conpat % (BARS_NUMBER, RAW_TARGET, OUTPUT_BIT_FORMAT)
bytetype, bytesize, bytenorm = ("H", 2, 65535) if OUTPUT_BIT_FORMAT == "16bit" else ("B", 1, 255)

def run():
    with tempfile.NamedTemporaryFile() as config_file:
        config_file.write(config.encode())
        config_file.flush()

        process = subprocess.Popen(["cava", "-p", config_file.name], stdout=subprocess.PIPE)
        chunk = bytesize * BARS_NUMBER
        fmt = bytetype * BARS_NUMBER

        if RAW_TARGET != "/dev/stdout":
            if not os.path.exists(RAW_TARGET):
                os.mkfifo(RAW_TARGET)
            source = open(RAW_TARGET, "rb")
            writer = open(RAW_TARGET, "w")
        else:
            source = process.stdout

        while True:
            data = source.read(chunk)
            if len(data) < chunk:
                break
            # sample = [i for i in struct.unpack(fmt, data)]  # raw values without norming
            # sample = [i / bytenorm for i in struct.unpack(fmt, data)]
            # 7281 is ceil(65535/9)
            sample = [i // 7282 for i in struct.unpack(fmt, data)]
            bars = ''.join([BAR_CHARACTERS[s] for s in sample])
            writer.write('testfifo')
            break
            # print(sample)
            # print(bars, end="")
            # sys.stdout.flush()
            # time.sleep(0.0005)

if __name__ == "__main__":
    run()
