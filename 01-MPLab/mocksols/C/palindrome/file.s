# Palindrome Check
.section .data
string:
    .ascii "madam"

.section .bss
    .lcomm reverse, 5

.section .text

.globl _start

not_equal:
    movl $1, %edx
    jmp end

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function
_start:
    movl $0, %edx
    movl $2, %ecx

    movl $string, %esi
    movl $string+4, %edi
repeat:
    cmpsb
    jne not_equal

    addl $1, %esi
    subl $1, %edi

    subl $1, %ecx
    cmp $0, %ecx
    je end

    jmp repeat

end:
    syscall
    call _ret           # exit
