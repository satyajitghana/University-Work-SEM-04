# Array Of Data
.section .data
array:
    .int 0, 1, 1, 1, 1, 1, 1, 1, 1, 1

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
    movl $1, %esi
    loop:
        movl array(, %edi, 4), %eax
        movl array(, %esi, 4), %ebx
        add %eax, %ebx
        add $1, %edi
        add $1, %esi
        movl %ebx, array(, %esi, 4)
        cmp $10, %edi
        jne loop
    movl $1, %eax
    movl $0, %ebx

    syscall
    call _ret           # exit
