.global factorial

factorial:
    movq $1, %rax          # Initialize result to 1
    cmpq $1, %rdi          # Compare n with 1
    jle done               # If n <= 1, return 1
    
loop_start:
    imulq %rdi, %rax       # result *= n
    decq %rdi              # n--
    cmpq $1, %rdi          # Compare n with 1
    jg loop_start          # If n > 1, continue loop
    
done:
    ret 

.section .note.GNU-stack,"",@progbits
