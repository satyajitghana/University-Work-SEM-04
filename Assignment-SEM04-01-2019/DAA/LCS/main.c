#include <stdio.h>
#include <string.h>
#include "lcs.h"
#include "input_helper.h"
#include "debug_helper.h"

typedef char* String;

int main() {
    printf("------------------ Longest Common Sub-sequence -----------------\n");
    /* Input Variables */
    String X, Y;
    /* Output Strings */
    Vector* strings = newMinimalVector(string_compare, print_string);
    /* Read the Words */
    //printf("Enter String X : "); get_word(&X);
    //printf("Enter String Y : "); get_word(&Y);
    X = new_string("abcbdab");
    Y = new_string("bdcaba");
    ds(X);
    ds(Y);
    di(lcs_length_recursion(X, Y, (int)strlen(X), (int)strlen(Y)));
    di(lcs_length_dp(X, Y, (int)strlen(X), (int)strlen(Y)));
    return 0;
}