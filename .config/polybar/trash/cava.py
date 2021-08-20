#!/usr/bin/python3
import os
import sys
import struct
import subprocess
import tempfile
import time

BAR_CHARACTERS = {
    0: '▁',  # Zero output
    1: '▁',
    2: '▂',
    3: '▃',
    4: '▄',
    5: '▅',
    6: '▆',
    7: '▇',
    8: '█',  # Highest output
}

bytetype, bytesize, bytenorm = ("H", 2, 65535) if OUTPUT_BIT_FORMAT == "16bit" else ("B", 1, 255)

def run():
    # with tempfile.NamedTemporaryFile() as config_file:
        # config_file.write(config.encode())
        # config_file.flush()
    process = subprocess.Popen(["cava", "-p", config_file.name], stdout=subprocess.PIPE)
    chunk = bytesize * BARS_NUMBER
    fmt = bytetype * BARS_NUMBER

    if RAW_TARGET != "/dev/stdout":
        if not os.path.exists(RAW_TARGET):
            os.mkfifo(RAW_TARGET)
        source = open(RAW_TARGET, "rb")
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
        # print(sample)
        print(bars, end="")
        sys.stdout.flush()
        time.sleep(0.0005)

if __name__ == "__main__":
    run()
