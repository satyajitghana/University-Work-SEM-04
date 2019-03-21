# Logical Operations and Arithemetic Shifting
.section .data

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
    # AND and XOR operations
    movl $10, %ebx  # b = 1010
    movl $2, %ecx   # c = 0010
    movl $3, %edx   # d = 0011
    andl %ebx, %ecx # b AND c
    movl %ecx, %eax # move the result to a, a = b AND c
    xorl %edx, %eax # a = (b AND c) XOR d, result is 1

    # XOR and OR operation
    movl $10, %ebx  # b = 1010
    movl $2, %ecx   # c = 0010
    movl $3, %edx   # d = 0011
    xorl %ebx, %ecx # b XOR c
    movl %ecx, %eax # move the result to a, a = b XOR c
    orl  %edx, %eax # a = (b XOR c) OR d, result is 11


    # Right and Left shifting operations
    # b = 64, c = 128, d = 4
    # perform a = (b * c) / 4
    movl $64, %ebx
    sall $7, %ebx
    sarl $2, %ebx   # the result is 2048

    syscall
    call _ret           # exit
