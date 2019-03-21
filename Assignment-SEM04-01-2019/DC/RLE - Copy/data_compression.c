//
// Created by shadowleaf on 09-Feb-19.
//

#include "data_compression.h"
#include "vector.h"
#include "debug_helper.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

//#define DEBUG 0

/* rle_encode : returns the Run-Length encoding of the string
 * str : the string to be encoded
 * length : length until which to be encoded */
string rle_encode(string str, int length) {
    /* create a empty placeholder for the encoded string */
    char encoded_output[10000] = "\0";

    /* to store the previous character
     * assuming when there is empty input the prev_char is empty as well*/
    char prev_char[2] = "\0";

    /* pointers to string positions
     * encode the string from beginning to length of the string passed
     * as an argument */
    char* start = str;
    char* end = str + length;
    char* curr;
    /* to store the current count of the prev_char
     * initially empty hence empty count = 1*/
    int curr_count = 1;

    /* Iterative method to go through the entire string */
    for (curr = start; curr <= end ; curr++) {
        if (*curr != prev_char[0]) {
            strcat(encoded_output, prev_char);
            /* store the repetitions only if the count is greater than 1
             * hence the length of a string with no repetition is not increased */
            if (curr_count > 1) {
                char string_count[1000] = "\0";
                sprintf(string_count, "%d", curr_count);
                strcat(encoded_output, string_count);
            }
#ifdef DEBUG
            printf("%c : %d ", prev_char[0], curr_count);
#endif
            /* reset the prev_char and curr_count */
            prev_char[0] = *curr;
            curr_count = 1;
        } else {
            curr_count++;
        }
    }

    /* return the output with a new memory location */
    return new_string(encoded_output);
}
