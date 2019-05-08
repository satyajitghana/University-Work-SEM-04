# Factorial
.section .data
n:
    .int 5

result:
    .int 1

.section .bss

.section .text

.globl _start

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function
_start:

    movl $5, %ebx
   movl %ebx, %eax
repeat:

    subl $1, %ebx
    
    mull %ebx
    cmp $1, %ebx
    je _end 
    jmp repeat 

_end:
    syscall
    call _ret           # exit
