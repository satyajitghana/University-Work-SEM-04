//
// Created by shadowleaf on 01-Mar-19.
//

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "hamming.h"

lld hamming_distance_string(string str1, string str2) {
    /* Check if the length of the strings are same */
    if (strlen(str1) != strlen(str2))
        return -1;

    lld len = (lld)strlen(str1);
    lld hdistance = 0;

    /* loop through the entire string and count the differences */
    for (lld i = 0 ; i < len ; i++) {
        if (str1[i] != str2[i])
            hdistance++;
    }

    return hdistance;
}

string hamming_code(const char* str) {

    string res_code = calloc(1024, sizeof *res_code);
    lld len = (lld)strlen(str);

    lld p_n, c_l, i, j, k;

    for(i = 0l, p_n = 0l;
        len > ((1<<i) - (i+1));
        p_n++, i++);

    c_l = p_n + len;

    for(i = j = k = 0l; i < c_l; i++) {
        if (i == ((1<<k)-1)) {
            *(res_code + i) = '0';
            k++;
        } else {
            *(res_code + i) = *(str + j);
            j++;
        }
    }

    for (i = 0l ; i < p_n ; i++) {
        lld pos = 1 << i;
        *(res_code + pos - 1) = calc_parity(res_code, pos, c_l);
    }

    *(res_code + c_l + 1) = '\0';

    return res_code;
}

void error_detect(const char* code, lld p_n) {
    lld c_l = (lld)strlen(code);
//    printf("%llu\n", c_l);
    lld error_pos = 0;
    for (lld i = 0; i < p_n ; i++) {
        lld pos = 1 << i;
        char value = calc_parity(code, pos, c_l);
        if (value != '0') {
            error_pos += pos;
        }
    }

    if (error_pos == 0) {
        printf("CODE VERIFIED OK\n");
    } else {
        printf("ERROR AT BIT %llu\n", error_pos);
    }
}

char calc_parity(const char* code, lld pos, lld c_l) {
    lld count = 0, i = pos - 1;

    while (i < c_l) {
        for (lld j = i ; j < pos + i ; j++) {
            if (code[j] == '1')
                count++;
        }

        i += 2*pos;
    }

    if (count%2 == 0)
        return '0';
    else
        return '1';
}