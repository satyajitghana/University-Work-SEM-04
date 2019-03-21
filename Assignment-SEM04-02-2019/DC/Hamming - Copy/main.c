#include <stdio.h>
#include <stdlib.h>
#include "hamming.h"
#include "input_helper.h"

void help();
string prog_name;
/* argc : argument count
 * argv : argument values*/
int main(int argc, char** argv) {
    prog_name = argv[0];
    if (argc >= 3) {
        switch(*(argv[1]+1)) {
            case 'd': {
                lld distance = hamming_distance_string(argv[2], argv[3]);
                printf("%llu\n", distance);
            } break;
            case 'c': {
                string encoded = hamming_code(argv[2]);
                printf("%s\n", encoded);
            } break;
            case 'e': {
                lld p_n = atoi(argv[2]);
                error_detect(argv[3], p_n);
            } break;
            default: {
                help();
            }
        }
    } else if (argc == 2) {
        switch (*(argv[1]+1)) {
            case 'd': {
                string str1, str2;
                get_line(&str1); get_line(&str2);
                lld distance = hamming_distance_string(str1, str2);
                printf("%llu\n", distance);
            } break;
            case 'c': {
                string str;
                while (get_line(&str) >= 0) {
                    string encoded = hamming_code(str);
                    printf("%s\n", encoded);
                }
            } break;
            default: {
                help();
            }
        }
    } else {
        help();
    }
    return 0;
}

void help() {
    printf("Hamming distance and Hamming Code\n"
           "USAGE : %s -d <string1> <string2>\n"
           "      : %s -c <string>\n"
           "      : %s -e <p_n> <encoded_string>\n"
           "-d : computes the hamming distance between two bit strings\n"
           "-c : computes the hamming code for the given bit string\n"
           "-e : checks for error in the hamming code, takes number of parity bits as parameter and the hamming code\n"
           "NOTE : if no arguments are passed to the program, it uses STDIN as input\n", prog_name, prog_name, prog_name);
}