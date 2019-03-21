//
// Created by shadowleaf on 05-Mar-19.
//

#include <stdlib.h>
#include "quack.h"
#include "limits.h"

/* Initialize the Quack Structure */
Quack* newQuack(void) {
    Quack* myquack;
    // Make sure the allocation was successful
    if ((myquack = malloc(sizeof *myquack)) != NULL) {
        init_quack(myquack);
        return myquack;
    }

    return NULL;
}

void init_quack(Quack* myquack) {
    // Assuming my quack structure can handle a huge amount
    // of data, lol.

    myquack -> s1 = newStack(INT_MAX);
    myquack -> s2 = newStack(INT_MAX);
    //myquack -> enqueue = enqueue_quack;
    //myquack -> dequeue = dequeue_quack;
    myquack -> push = enqueue_quack;
    myquack -> pop = pop_quack;
    myquack -> pull = dequeue_quack;
    myquack -> display = print_quack;
}

void print_quack(Quack* myquack, void (*print_one)(void*)) {
    // Get a nice little reference, meow
    Stack* s1 = myquack -> s1;
    Stack* s2 = myquack -> s2;

    while(!(s1 -> isEmpty(s1))) {
        s2 -> push(s2, s1 -> peek(s1));
        s1 -> pop(s1);
    }

    printf("Left -> ");
    s2 -> display (s2, print_one);
    printf("Right");

    while(!(s2 -> isEmpty(s2))) {
        s1 -> push(s1, s2 -> peek(s2));
        s2 -> pop(s2);
    }
}

void enqueue_quack(Quack* myquack, void* data) {
    // Get a nice little reference, meow
    Stack* s1 = myquack -> s1;
    Stack* s2 = myquack -> s2;

    while(!(s1 -> isEmpty(s1))) {
        s2 -> push(s2, s1 -> peek(s1));
        s1 -> pop(s1);
    }

    s1 -> push(s1, data);

    while(!(s2 -> isEmpty(s2))) {
        s1 -> push(s1, s2 -> peek(s2));
        s2 -> pop(s2);
    }
}

void* dequeue_quack(Quack* myquack) {
    Stack* s1 = myquack -> s1;
    Stack* s2 = myquack -> s2;

    if (s1 -> isEmpty(s1)) {
        printf("QUACK is Empty");
        return NULL;
    }

    void* x = s1 -> peek(s1);
    s1 -> pop(s1);

    return x;
}

void* pop_quack(Quack* myquack) {
    Stack* s1 = myquack -> s1;
    Stack* s2 = myquack -> s2;

    if (s1 -> isEmpty(s1)) {
        printf("QUACK is Empty");
        return NULL;
    }

    while(!(s1 -> isEmpty(s1))) {
        s2 -> push(s2, s1 -> peek(s1));
        s1 -> pop(s1);
    }

    void* x = s2 -> pop(s2);

    while(!(s2 -> isEmpty(s2))) {
        s1 -> push(s1, s2 -> peek(s2));
        s2 -> pop(s2);
    }

    return x;
}
