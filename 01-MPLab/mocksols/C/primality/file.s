# Check if a number is prime
.section .data
n:
    .int 14

until:
    .int 0

.section .bss

.section .text

.globl _start

not_prime:
    movl $1, %ecx
    jmp _end

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function
_start:
  
    movl $0, %ecx   # assume to be prime
    # until = n / 2
    movl $0, %edx
    movl n, %eax
    movl $2, %ebx
    divl %ebx
    movl %eax, until
    
    movl $2, %ebx

repeat:
    movl n, %eax
    movl $0, %edx
    divl %ebx
    cmp $0, %edx
    je not_prime
    cmp %ebx, until
    jg _end
    addl $1, %ebx
    jmp repeat

_end:
    syscall
    call _ret           # exit
