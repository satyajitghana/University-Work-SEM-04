# Calculator
.section .data
a:
    .int 5
b:
    .int 4

option:
    .int 1

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

    movl a, %eax
    movl b, %ebx
    
    cmp $1, option
    je _shift
    cmp $2, option
    je _and
    cmp $3, option
    je _xor
    cmp $4, option
    je _not

    jmp _end
  
_shift:
    sall %eax
    movl %eax, result
    jmp _end

_and:
    andl %ebx, %eax
    mov %eax, result
    jmp _end

_xor:
    xorl %ebx, %eax
    mov %eax, result
    jmp _end

_not:
    notl %eax
    mov %eax, result
    jmp _end

_end:
    syscall
    call _ret           # exit
