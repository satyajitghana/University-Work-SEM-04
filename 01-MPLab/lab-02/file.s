# Arithmetic Operations
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
    movl $10,%ebx   # b = 10
    movl $20, %ecx  # c = 20
    addl %ebx, %ecx # b + c
    movl $15, %edx  # d = 15
    subl %edx, %ecx # (b + c) - d
    movl %ecx, %eax

    movl $15, %ebx  # b = 15
    movl $15, %eax  # c = 15
    mull %ebx       # (b * c)
    movl $5, %ecx   # d = 5
    movl $0, %edx   # zero out edx
    divl %ecx       # (b * c) / d

    # signed number addition
    movl $-10, %ebx
    movl $-20, %ecx
    addl %ebx, %ecx

    syscall
    call _ret           # exit
