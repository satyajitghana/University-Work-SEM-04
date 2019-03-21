# Array Operations
.section .data
array1:
.int 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25

array2:
.int 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

.section .bss

.section .text

.globl _start

# function for system exit codeq
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function
_start:
  
    # below code, tested works
    movl $15, %ebx  # index = 15
    movl $10, %ecx  # y = 10
    addl array1( , %ebx, 4), %ecx    # array[15] + y

    movl $10, %ecx  # c = 10, use this to check for break condition
    movl $0, %ebx   # b = 0, use this for index

    # below code, tested works
loop1:
    movl array2( , %ebx, 4), %eax   # a = array1[b]
    addl $1, %ebx   # b = b + 1
    cmp %ebx, %ecx  # compare b and c
    jne loop1

    movl $0, %ebx   # reset b = 0
    movl $0, %edx   # d = 0
    
loop2:
    movl %edx, array2( , %ebx, 4)   # array2[b] = d
    addl $1, %ebx   # b = b + 1
    cmp %ebx, %ecx  # compare b and c
    jne loop2

    syscall
    call _ret           # exit
