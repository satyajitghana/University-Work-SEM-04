.section .data
n: 
    .int 5

result:
    .int 0
.section .bss

.section .text

.globl _start

_start:
    movl $2, %edx

    movl $0, %eax
    movl $1, %ebx
repeat:
    movl %eax, %ecx
    addl %ebx, %ecx
    movl %ecx, result
    movl %ebx, %eax
    movl result, %ebx

    addl $1, %edx

    cmp n, %edx
    jne repeat

    movl $0, %eax
    movl $1, %ebx
    int $0x80
