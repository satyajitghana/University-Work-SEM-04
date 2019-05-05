# Replace a Character in a String
.section .data
string:
    .ascii "this_is_a_string"

to_replace:
    .ascii "s"

len:
    .int 16

.section .bss

.section .text

.globl _start

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function - replaces every occurence of 's' with a '%'
_start:
    movl $0, %ecx

repeat:
    movl $string, %edi
    addl %ecx, %edi
    movl $to_replace, %esi
    addl $1, %ecx
    cmpsb
    je found
back:
    cmp %ecx, len
    jne repeat

_end:
    syscall
    call _ret           # exit

found:
    movb $'%', %al
    subl $1, %edi
    stosb
    jmp back
