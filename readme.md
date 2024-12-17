# NASM x64 Build Utilities

Simple build utilities for NASM x64 assembly development on Linux.

## Build Script

The `build.sh` script automatically compiles and runs NASM assembly programs.

### Usage

```bash
./build.sh <filename>
```

This script:
1. Compiles the `.asm` file using NASM
2. Links the object file using LD
3. Executes the resulting program
4. Cleans up temporary files

## Template Generator Script

The `start.sh` script generates a new NASM assembly file with a basic template.

### Usage

```bash
./start.sh <filename>
```

The script:
1. Checks if a file with the given name already exists
2. Creates a new `.asm` file with the following template:
```nasm
SECTION .data
  SYS_EXIT  equ 60
  EXIT_CODE equ 0

SECTION .text
  global _start

_start:
  mov rax, SYS_EXIT
  mov rdi, EXIT_CODE
  syscall
```

## Requirements

- NASM assembler
- GNU Linker (LD)
- Linux x64 system

## File Permissions

Make sure to set execute permissions for the scripts:
```bash
chmod +x build.sh start.sh
```

## Contributing

Feel free to submit issues and pull requests.
