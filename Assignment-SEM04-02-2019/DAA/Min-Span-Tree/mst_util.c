//
// Created by shadowleaf on 05-Mar-19.
//

#include "mst_util.h"
#include <limits.h>
#include <stdio.h>

int extract_min(int V, int *key_val, bool *mst_set) {
    int min = INT_MAX;
    int min_index = 0;

    for (int v = 0 ; v < V ; v++) {
        if (mst_set[v] == false && key_val[v] < min) {
            min = key_val[v], min_index = v;
        }
    }

    return min_index;
}

void find_cost(int V, int graph[][MAX]) {
    int parent[V], key_val[V];
    bool mst_set[V];

    for (int i = 0 ; i < V ; i++) {
        key_val[i] = INT_MAX, mst_set[i] = false;
    }

    parent[0] = -1;
    key_val[0] = 0;

    for (int i = 0 ; i < V -1 ; i++) {
        int u = extract_min(V, key_val, mst_set);
        mst_set[u] = true;

        for (int v = 0 ; v < V ; v++) {
            if (graph[u][v] && mst_set[v] == false &&
                graph[u][v] < key_val[v]) {
                key_val[v] = graph[u][v];
                parent[v] = u;
            }
        }
    }

    int cost = 0;

    for (int i = 1 ; i < V ; i++)
        cost += graph[parent[i]][i];

    printf("minimum cost to reconnect all the computers : %d\n", cost);
}

int print_mst(int parent[], int V, int graph[][MAX]) {
    printf("Edge\tWeight\n");
    for (int v = 1; v < V; v++)
        printf("%d - %d \t%d \n", parent[v], v, graph[v][parent[v]]);
}