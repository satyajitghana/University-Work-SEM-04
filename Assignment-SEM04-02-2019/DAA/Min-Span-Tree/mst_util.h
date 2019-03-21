//
// Created by shadowleaf on 05-Mar-19.
//

#ifndef MIN_SPAN_TREE_MST_UTIL_H
#define MIN_SPAN_TREE_MST_UTIL_H

#define MAX 10000

#include <stdbool.h>

int extract_min(int V, int *key_val, bool *mst_set);

void find_cost(int V, int graph[][MAX]);

#endif //MIN_SPAN_TREE_MST_UTIL_H
