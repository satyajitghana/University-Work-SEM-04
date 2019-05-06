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
  
    movl n, %ebx
    movl result, %eax
repeat:
    mull %ebx
    subl $1, %ebx
    cmp $1, %ebx
    jne repeat

    movl %eax, result

    syscall
    call _ret           # exit
