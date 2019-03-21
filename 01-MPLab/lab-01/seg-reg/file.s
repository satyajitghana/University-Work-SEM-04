# Try Moving Data to Segment Registers
.section .data
value:
    .int 10

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
    # moving data to Segment Register
    movl value, %ss

    syscall
    call _ret           # exit
