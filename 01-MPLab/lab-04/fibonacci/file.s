# Fibonacci series
.section .data
first:
    .int 0

second:
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
  
    movl $10, %ecx  # c = 10, use this as n
    movl $2, %ebx   # b = 2, use this as current-th fibonacci number

loop:
    movl first, %eax    # next = first
    addl second, %eax   # next = first + second
    movl second, %edx   # temp = second
    movl %edx, first    # first = second
    movl %eax, second   # second = next

    addl $1, %ebx       # b = b + 1
    cmp %ebx, %ecx      # compare b and c
    jne loop

    syscall
    call _ret           # exit
