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
  
    movb $1, %al
    movb $2, %ah
    movb $3, %bl
    movb $4, %bh
    movb $5, %cl
    movb $6, %ch
    movb $7, %dl
    movb $8, %dh

    addb %ah, %al
    addb %bl, %al
    addb %bh, %al
    addb %cl, %al
    addb %ch, %al
    addb %dl, %al
    addb %dh, %al

    syscall
    call _ret           # exit

# OUTPUT
# Breakpoint 1, _start () at file.s:36
# 36          syscall
# (gdb) info register al
# eax            0x24     36
