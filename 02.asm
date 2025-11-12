section .data
section .bss
section .text
    global _start

_start:
    mov ecx, 15
    mov eax, 0
    mov ebx, 25

loop_start:
    add eax, ecx
    inc ecx
    cmp ecx, ebx
    jle loop_start

    mov ebx, eax
    mov eax, 1
    int 0x80