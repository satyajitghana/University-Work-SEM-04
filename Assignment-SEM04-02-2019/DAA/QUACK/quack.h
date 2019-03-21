//
// Created by shadowleaf on 05-Mar-19.
//

#ifndef QUACK_QUACK_H
#define QUACK_QUACK_H

#include "stack.h"

struct Quack {
    Stack *s1, *s2;
    void (*push)(struct Quack*, void*);
    void* (*pop)(struct Quack*);
    void* (*pull)(struct Quack*);
    void (*display)(struct Quack*, void (*)(void*));
};

typedef struct Quack Quack;

/* To Initialize the Quack Structure */
Quack* newQuack(void);
void init_quack(Quack*);

/* Quack Operations */
void enqueue_quack(Quack*, void*);
void* dequeue_quack(Quack*);
void* pop_quack(Quack*);

/* print utility */
void print_quack(Quack*, void (*)(void*));

#endif //QUACK_QUACK_H
