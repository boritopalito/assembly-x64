#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file_name>"
  exit 1
fi

filename="${1%.*}"

if [ -f "$filename.asm" ]; then
  echo "File with name <$filename.asm> already exists."
  exit 1
fi

cat > $filename.asm <<EOF
SECTION .data
  SYS_EXIT  equ 60
  EXIT_CODE equ 0

SECTION .text
  global _start

_start:
  mov rax, SYS_EXIT
  mov rdi, EXIT_CODE
  syscall
EOF
