#include <stdio.h>
#define di(i) printf("\nDEBUG--#"#i " : %d#\n", i);

/* a = b + (c * d) */
int a, b = 1, c = 2, d = 3;

int main() {
    di(b); di(c); di(d);
    printf("\nBefore Operation:\n");
    di(a);
    __asm__("movl c, %eax \n\t"
            "movl d, %edx \n\t"
            "mull %edx \n\t"
            "add b, %eax \n\t"
            "movl %eax,a \n\t");
    printf("\nAfter Operation:\n");
    di(a);
    return 0;
}