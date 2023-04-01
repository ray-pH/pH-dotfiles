#!/bin/bash
python3 -m unicodeit.cli "$(xsel -p)" | xsel --clipboard