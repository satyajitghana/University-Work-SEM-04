# String Manipulation
.section .data
input:
    .ascii "Hi Hello"

.section .bss
    .lcomm output, 10

.section .text

.globl _start

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0,  %rdi               # exit code
    syscall

# driver function
_start:
  
    # copy contents from input to output
    movl $8, %ecx       # set the length of the string to copy in ecx
    movl $input, %esi
    movl $output, %edi
    rep movsb           # repeat copy instruction 8 times

    # copy contents from input to output in reverse
    movl $8, %ecx       # set the length of the string to copy in ecx
    movl $input+7, %esi
    movl $output+7, %edi
    rep movsb

    # copy contents from input from nth character
    movl $8, %ecx
    movl $input+3, %esi
    movl $output, %edi
    rep movsb

    # insert a byte into msg1
    movb $65, %al
    movl $output, %edi
    stosb

    syscall
    call _ret           # exit
