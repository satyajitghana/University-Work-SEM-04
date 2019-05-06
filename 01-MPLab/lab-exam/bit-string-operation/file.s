# Bit String replacement
.section .data
str1:
    .ascii "10010101"
str2:
    .ascii "1010101010101010"

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
  
    movb $'1', %al
    movl $str1+2, %edi
    stosb
    movl $str1+4, %edi
    stosb

    movb $'0', %al
    movl $str2+3, %edi
    stosb
    movl $str2+7, %edi
    stosb

    syscall
    call _ret           # exit
