//
// Created by shadowleaf on 03-Feb-19.
//

#include "lcs.h"
// #include "vector.h"

#define max(a, b) (a > b ? a : b)

int lcs_length_brute(String X, String Y, int m, int n) {
    int LCS = 0;
    for (int i = 0 ; i < m ; i++) {
//        for (int )
    }
}

/* Returns the length of the longest common sub-sequence */
int lcs_length_recursion(char* X, char* Y, int i, int j) {
    if (i == 0 || j == 0)
        return 0;
    // if a match was found, then increment the indices of both
    if (X[i-1] == Y[j-1])
        return 1 + lcs_length_recursion(X, Y, i - 1, j - 1);

    return max(lcs_length_recursion(X, Y, i-1, j), lcs_length_recursion(X, Y, i, j-1));
}

int lcs_length_dp(char* X, char* Y, int m, int n) {
    int L[m+1][n+1];

    for (int i = 0 ; i <= m ; i++) {
        for (int j = 0 ; j <= n ; j++) {
            if (i == 0 || j == 0)
                L[i][j] = 0;
            else if (X[i-1] == Y[j-1])
                L[i][j] = L[i-1][j-1] + 1;
            else
                L[i][j] = max(L[i-1][j], L[i][j-1]);
        }
    }

    return L[m][n];
}

