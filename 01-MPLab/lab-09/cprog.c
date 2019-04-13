#include <stdio.h>
#define di(i) printf("\nDEBUG--#"#i " : %d#\n", i);

/* a = b + (c * d) */
int a, b = 1, c = 2, d = 3;

int main() {
    di(b); di(c); di(d);
    printf("\nBefore Operation:\n");
    di(a);
    a = b + (c * d);
    printf("\nAfter Operation:\n");
    di(a);
    return 0;
}