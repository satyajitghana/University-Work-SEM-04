# Search in a String
.section .data
string:
    .ascii "sg159.cs.et17@msruas.ac.in"

key:
    .ascii "@"

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
  
    movl $26, %ecx
    leal string, %edi   # load the effective address
    leal key, %esi
    lodsb
    repne scasb
    jne not_found
    movl $1, %edx
    jmp _end

not_found:
    movl $0, %edx

_end:
    syscall
    call _ret           # exit
