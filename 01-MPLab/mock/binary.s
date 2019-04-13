.section .data
n:
    .int 0b1000

.section .bss

.section .text

.globl _start

# driver function
_start:
    movl n, %eax  # store the number here
    movl $1, %edx # store the number of zeros here
repeat:
    movl %eax, %ebx
    andl $1, %ebx
    cmp $0, %ebx
    je update
backhere:
    movl $1, %ecx
    sarl %ecx
    cmp $0, %ecx
    je _end
    jmp repeat
update:
    addl $1, %edx
    jmp backhere
_end:
    movl $1, %eax
    movl $0, %ebx
    int $0x80
