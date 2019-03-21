#include <stdio.h>
#include "mst_util.h"

int main() {
    int n = 5;
    int computer_node[][MAX] = {{0, 1, 2, 3, 4},
                                {1, 0, 5, 0, 7},
                                {2, 5, 0, 6, 0},
                                {3, 0, 6, 0, 0},
                                {4, 7, 0, 0, 0}};
    find_cost(n, computer_node);
    return 0;
}