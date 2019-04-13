# Sorting
.section .data
array:
    .int 5, 4, 3, 2, 1

len:
    .int 5  # length of the array

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
  
    movl $0, %ecx           # initialize the two pointers to 0

fast_pointer_reset:
    movl $0, %edx

compare:
    movl array(, %ecx, 4), %eax
    movl array(, %edx, 4), %ebx
    cmp %eax, %ebx
    jg swap

check_conditions:
    # check if we have gone throughout the array
    cmp %ecx, len
    je _end

inner_loop:
    addl $1, %edx

    # check if the fast pointer has reached the end
    cmp %edx, len
    jne compare
    
    # if the fast pointer has reached the end reset fast pointer
    # and increment slow pointer
    addl $1, %ecx
    movl $0, %edx
    jmp compare

swap:
    movl array(, %ecx, 4), %eax
    movl array(, %edx, 4), %ebx
    movl %eax, array(, %edx, 4)
    movl %ebx, array(, %ecx, 4)
    jmp check_conditions

_end:
    syscall
    call _ret           # exit
