# Second Largest in an Array
.section .data
arr:
    .int 1, 4, -12, 23, 44, 123, 97
len:
    .int 7

flag:
    .int 0

second_max:
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
    movl $0, %ebx
    movl $0, %ecx
repeat:
    addl $1, %ecx
    cmp len, %ecx
    je loop2
    movl arr(, %ebx,4), %edx
    cmp %edx, arr(, %ecx,4)
    jle repeat
    movl %ecx, %ebx
    jmp repeat
loop2:
    movl arr(, %ebx,4), %edx
    movl %edx, second_max
    
    movl $1, %edx
    cmp flag, %edx
    je _end
    
    movl $1, flag
    movl $0, arr(, %ebx, 4)
    jmp _start

_end:
    syscall
    call _ret           # exit
