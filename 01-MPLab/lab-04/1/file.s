# Array Of Data
.section .data
array:
    .int 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

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
    movl $20, %eax      # y = 20
    movl $15, %ebx      # i = 15
    movl array(, %ebx, 4), %ecx     # array[i]
    addl %ecx, %eax
    movl $1, %eax
    movl $0, %ebx

    syscall
    call _ret           # exit
