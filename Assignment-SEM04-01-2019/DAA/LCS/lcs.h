//
// Created by shadowleaf on 03-Feb-19.
//

#include "vector.h"

#ifndef LCS_LCS_H
#define LCS_LCS_H

typedef char* String;

int lcs_length_recursion(String X, String Y, int i, int j);
int lcs_length_dp(String X, String Y, int i, int j);

#endif //LCS_LCS_H
