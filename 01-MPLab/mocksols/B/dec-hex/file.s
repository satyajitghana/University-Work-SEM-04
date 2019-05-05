# Decimal to Hexa
.section .data
n:
    .int 1000

base:
    .int 16

result:
    .int 0, 0, 0, 0, 0, 0

.section .bss

.section .text

.globl _start

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# OUTPUT:
; (gdb) print result@6
; $3 = {8, 14, 3, 0, 0, 0}

# driver function
_start:
  
    movl $0, %ecx # index var

repeat:
    movl $0, %edx
    movl n, %eax
    movl base, %ebx
    divl %ebx
    movl %eax, n
    movl %edx, result(, %ecx, 4)
    addl $1, %ecx

    movl n, %ebx
    cmp $0, %ebx
    jne repeat

    syscall
    call _ret           # exit
