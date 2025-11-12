section .data
section .bss
section .text
    global _start

_start:
    mov ecx, 25  
    mov eax, 0    
    mov ebx, 15

loop_start:
    add eax, ecx
    dec ecx
    cmp ecx, ebx
    jne loop_start

    mov ebx, eax
    mov eax, 1
    int 0x80