# Palindrome
.section .data
str: 
    .ascii "MADAM"
    
len: 
    .int 2

l:
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
  
    movl $str, %esi
    movl $str+4, %edi
    movl $1, %ecx

repeat:

    cmpsb 
    jne _notP
    addl $1, %ecx
    cmp %ecx, len
    je _P
    addl $1, %esi 
    subl $1, %edi 
    jmp repeat

_notP: 
    movl $1, %edx
    jmp _end
_P:
    movl $0, %edx
    jmp _end

_end:
    syscall
    call _ret           # exit
