# Array Of Data
.section .data
array:
    .int 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11

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
    movl $0, %edi
    loop:
        movl $10, array(, %edi, 4)
        movl array(, %edi, 4), %eax
        add $1, %edi
        cmp $11, %edi
        jne loop
    movl $1, %eax
    movl $0, %ebx

    syscall
    call _ret           # exit
