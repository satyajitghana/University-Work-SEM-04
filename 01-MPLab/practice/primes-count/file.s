# Count the number of prime number in an array
.section .data
arr:
    .int 7, 13, 15, 16
len:
    .int 5
count:
    .int 0
n:
    .int 0
i:
    .int 0
until:
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

repeat:
    movl i, %ebx
    movl arr(, %ebx, 4), %ecx
    movl %ecx, n

    addl $1, %ebx
    movl %ebx, i

    movl i, %ecx
    cmp len, %ecx
    je end

check_no:
    movl $1, %ebx
    movl n, %eax
    movl $0, %edx # clear out edx
    divl %ebx
    movl %eax, until

_loop:
    addl $1, %ebx
    movl n, %eax
    movl $0, %edx # clear out edx
    divl %ebx
    cmp $0, %edx
    jne _loop

    cmp until, %ebx
    je update

end:
    syscall
    call _ret           # exit

update:
    movl count, %eax
    addl $1, %eax
    movl %eax, count
    jmp repeat
