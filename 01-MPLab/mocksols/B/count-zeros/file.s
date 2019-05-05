# Count the number of zeros in a the binary representation of the given number
.section .data
count:
    .int 0

.section .bss

.section .text

.globl _start

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# OUTPUT
; (gdb) print count
; $1 = 2
; (gdb) q

# driver function
_start:
  
    movl $0b101101, %eax
    movl $0, %ecx # count

repeat:
    movl %eax, %ebx
    andl $1, %ebx
    cmp $0, %ebx
    je increment
back:
    sarl %eax
    cmp $0, %eax
    jne repeat

    movl %ecx, count

    syscall
    call _ret           # exit

increment:
    addl $1, %ecx
    jmp back
