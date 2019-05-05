# Count the character in the string
.section .data
string:
    .ascii "this is a fuken string"
key:
    .ascii "s"
len:
    .int 22

count:
    .int 0

.section .bss

.section .text

.globl _start

# OUTPUT
; Breakpoint 1, back () at file.s:43
; 43          syscall
; (gdb) print count
; $1 = 3

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function
_start:

    movl $0, %ecx # index var
    movl $0, %ebx # count var
repeat:
    movl $string, %edi
    addl %ecx, %edi
    movl $key, %esi
    cmpsb
    je increment
back:
    addl $1, %ecx
    cmp len, %ecx
    jne repeat

    movl %ebx, count

    syscall
    call _ret           # exit

increment:
    addl $1, %ebx
    jmp back
