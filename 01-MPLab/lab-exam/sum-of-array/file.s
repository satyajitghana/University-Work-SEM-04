# Factorial
.section .data
arr:
    .int 1, 2, 3, 4, 5

result:
    .int 0

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
    movl $0, %edx
repeat:
    subl $1, %ebx
    addl arr(, %ebx, 4), %edx
    cmp $0, %ebx
    jne repeat

    movl %edx, result


    syscall
    call _ret           # exit
