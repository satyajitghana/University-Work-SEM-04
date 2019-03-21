# GCD LCM of two numbers
.section .data
a:
    .int 98
b:
    .int 56
gcd:
    .int 0
lcm:
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
  
    # a = 98, b = 56
    movl a, %eax
    movl b, %ebx

loop:
    movl %eax, %edx
    cmp $0, %ebx        # if b == 0
    je loop_end         # return a
    
    movl $0, %edx       # clear out edx
    divl %ebx           # a = a / b, d = remainder
    movl %ebx, %eax     # a = b
    movl %edx, %ebx     # b = a % b
    jmp loop

loop_end:
    movl %edx, gcd      # gcd = GCD(a, b)
    movl a, %eax        # a = a
    mull b              # a = a * b
    divl gcd            # a = a * b / gcd
    movl %eax, lcm      # lcm = a

    syscall
    call _ret           # exit
    