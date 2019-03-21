//
// Created by shadowleaf on 01-Mar-19.
//

#include "input_helper.h"

#ifndef HAMMING_HAMMING_H
#define HAMMING_HAMMING_H

#define llu unsigned long long int
#define lld long long int
//#define string char*

lld hamming_distance_string(string str1, string str2);

string hamming_code(const char* str);

void error_detect(const char* code, lld p_n);

char calc_parity(const char* code, lld pos, lld c_l);

#endif //HAMMING_HAMMING_H
