# Searching
.section .data
array:
    .int 1, 2, 3, 4, 5

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
  
    movl $2, %edx       # element to search for = 2
    movl $0, %ebx       # i = 0
    movl $5, %eax

search_loop:
    cmp array( , %ebx, 4), %edx
    je found
    add $1, %ebx
    cmp %ebx, %eax    # check if i == 5
    jne search_loop
    jmp not_found

found:
    movl %ebx, %eax
    jmp _end

not_found:
    movl $-1, %eax
    jmp _end

_end:
    syscall
    call _ret           # exit
