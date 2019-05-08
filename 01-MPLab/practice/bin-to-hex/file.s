# binary to hexa
.section .data
n:
    .int 1,1,0,1,1
len:
    .int 5

decimal:
    .int 0

hex:
    .int 0, 0
h_len:
    .int 2
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
    movl $1, %ecx

repeat:
    subl $1, %ebx
    movl n(, %ebx, 4), %eax
    mull %ecx

    movl decimal, %edx
    addl %eax, %edx
    movl %edx, decimal

    movl %ecx, %eax
    movl $2, %edx
    mull %edx
    movl %eax, %ecx

    cmp $0, %ebx
    jne repeat

    movl decimal, %eax
    movl h_len, %ecx
loop1:
    subl $1, %ecx
    movl $16, %ebx
    divl %ebx
    movl %edx, hex(, %ecx, 4)
    cmp $0, %ecx
    jne loop1
      
_end:
    syscall
    call _ret           # exit
