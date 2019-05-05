# HexaDecimal to Decimal
.section .data
hex:
    .int 10, 4, 12, 2 # hex = A4C2
len:
    .int 4
result:
    .int 0
m:
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
  
    movl len, %ebx
    movl $0, %ecx

repeat:
    subl $1, %ebx
    movl hex(, %ebx, 4), %eax
    movl m, %edx
    mull %edx

    movl result, %ecx
    addl %eax, %ecx
    movl %ecx, result

    movl m, %eax
    movl $16, %edx
    mull %edx
    movl %eax, m

    cmp $0, %ebx
    jne repeat

    syscall
    call _ret           # exit
