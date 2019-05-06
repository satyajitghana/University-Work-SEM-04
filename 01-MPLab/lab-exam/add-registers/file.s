# Title of the Lab
.section .data

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
  
    movl $1, %eax
    movl $2, %ebx
    movl $3, %ecx
    movl $4, %edx
    movl $5, %esi
    movl $6, %edi
    movl $7, %esp
    movl $8, %ebp

    addl %ebx, %eax
    addl %ecx, %eax
    addl %edx, %eax
    addl %esi, %eax
    addl %edi, %eax
    addl %esp, %eax
    addl %ebp, %eax

    syscall
    call _ret           # exit

# OUTPUT
; Breakpoint 1, _start () at file.s:36
; 36          syscall
; (gdb) info register eax
; eax            0x24     36
