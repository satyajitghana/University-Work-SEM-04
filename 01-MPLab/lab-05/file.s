# Conditional Instructions
.section .data
n:
    .int 10

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
  
    # n natural numbers in reverse order and their sum
    movl n, %eax
    movl $0, %ebx
loop1:
    addl %eax, %ebx
    subl $1, %eax
    cmp $0, %eax
    jne loop1

    # even numbers in n natural numbers
    movl $2, %eax
loop2:
    addl $2, %eax
    cmp n, %eax
    jle loop2

    # odd numbers in n natural numbers
    movl $1, %eax
loop3:
    addl $2, %eax
    cmp n, %eax
    jle loop3

    syscall
    call _ret           # exit
