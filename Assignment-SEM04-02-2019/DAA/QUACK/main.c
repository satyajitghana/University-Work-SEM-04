#include <stdio.h>
#include "vector.h"
#include "stack.h"
#include "quack.h"
#include "debug_helper.h"

int main() {
    Quack* myquack;

    if ((myquack = newQuack()) == NULL) {
        return -1;
    }

    myquack -> push(myquack, new_int(1));
    myquack -> push(myquack, new_int(2));
    myquack -> push(myquack, new_int(3));

    printf("\nPUSH 1, 2, 3 :\n");
    myquack -> display(myquack, print_int);
    printf("\n");

    printf("\nPULL:\n");
    myquack -> pull(myquack);
    myquack -> display(myquack, print_int);
    printf("\n");

    printf("\nPOP:\n");
    myquack -> pop(myquack);
    myquack -> display(myquack, print_int);
    printf("\n");

    return 0;
}