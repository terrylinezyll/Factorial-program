section .data
msg1 db" Start ...", 10
len1 equ $ - msg1

msg2 db" Stop...", 10
len2 equ $ - msg2

section .text
      global _start
print:   ; procedure procedure to load register to avoid repeating code commented 
     mov rax, 1
     mov rdi, 1
     syscall   ; without it nothing will be displayed
     ret  ;exits code  without causing an infintie loop

delay:  ;loop multiple times ie use rcx to prevent looping manually any other regiester we will have to subtract maually
     mov rcx,rdi
myloop:       ; its the int he same bracket as mydelay immediately called after delay
     loop myloop
     ret

_start:
    ; mov rax, 1    ;pass address of first string
    ; mov rdi, 1
     mov rsi, msg1
     mov rdx, len1
     call print
     mov rdi, 1000000000 ; assign value to rdi
     call delay          ; call delay
     ;syscall

     ;mov rax, 1   ;pass address of the second string 
     ;mov rdi, 1
     mov rsi, msg2
     mov rdx, len2
     call print
     ;syscall
     
     mov rdi, 1000000000
     call delay

     mov rax, 60
     xor rdi,rdi
     syscall