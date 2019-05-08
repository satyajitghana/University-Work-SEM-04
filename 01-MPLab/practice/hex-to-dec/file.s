# Title of the Lab
.section .data
hex:
    .int 10, 4, 8, 15 # A48F

result:
    .int 0
len:
    .int 4
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
     movl len, %ecx
    movl $1, %ebx
repeat:
    subl $1, %ecx
    movl hex(, %ecx,4), %eax
    mull %ebx
    movl result, %edx
    addl %eax, %edx
    movl %edx, result
    movl %ebx, %eax
    movl $16, %edx
    mull %edx
    movl %eax, %ebx 
    cmp $0, %ecx
    je end
    jmp repeat


    
end:
    syscall
    call _ret           # exit
