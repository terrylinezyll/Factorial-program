section .data
msg1 db" Start ...", 10
len1 equ $ - msg1

msg2 db" Stop...", 10
len2 equ $ - msg2

section .text
      global _start

%macro print 2
    mov rax,1    ;what you want to receive or your diplaying
    mov rdi,1    ; how you want it displayed
    mov rsi, %1   ; what you want  to display
    mov rdx, %2    ; size of you want displayed
    syscall
%endmacro

%macro  iter 1
     mov rcx,%1
myloop:
     loop myloop
%endmacro
 
_start:
     print msg1,  len1  ; run with one argument will get an error because program expecting two paremeterd
     iter 100000000
     print msg2, len2
     mov rax, 60
     xor rdi,rdi
     syscall


    