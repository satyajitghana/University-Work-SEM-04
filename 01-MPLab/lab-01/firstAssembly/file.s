.section .data
value:
    .int 10

.section .text

.globl _start

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function
_start:
    movl $100, %eax     # move 100 to eax
    movl %eax, %ebx     # move eax to ebx
    movl %ebx, value    # move ebx to value

    movl $0x01, %eax    # move 0x01 to eax
    movl $0x00, %ebx    # move 0x00 to ebx
    syscall

    call _ret           # exit
