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

# OUTPUT
; Breakpoint 1, _end () at file.s:65
; 65          syscall
; (gdb) print result
; $1 = 9

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
    je _add
    cmp $2, option
    je _sub
    cmp $3, option
    je _mul
    cmp $4, option
    je _div

    jmp _end
  
_add:
    addl %ebx, %eax
    movl %eax, result
    jmp _end

_sub:
    subl %ebx, %eax
    mov %eax, result
    jmp _end

_mul:
    mull %ebx
    mov %eax, result
    jmp _end

_div:
    movl $0, %edx # zero out edx
    divl %ebx
    mov %eax, result
    jmp _end

_end:
    syscall
    call _ret           # exit
