as -gstabs file.s -o out.o
ld out.o -o out

gdb out


info registers -- to view registers
print data -- to print data

meow:
    .byte 10
shorty:
    .short 10000
inty:
    .int 1000000000
