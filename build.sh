#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <asm_file>"
  exit 1
fi

filename="${1%.*}"

nasm -f elf64 "$filename.asm"
ld "$filename.o" -o $filename
"./$filename"
