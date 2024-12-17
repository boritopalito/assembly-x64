global _start

SECTION .data
msg       db "Hello world!", 10
msg_len   equ $-msg
SYS_WRITE equ 1
SYS_EXIT  equ 60

SECTION .text

_start:
  ; Use SYS_WRITE to print
  mov rax, SYS_WRITE
  mov rdi, 1
  mov rsi, msg
  mov rdx, msg_len
  syscall

  ; Exit
  pop rdi
  mov rax, SYS_EXIT
  mov rdi, 0
  syscall
