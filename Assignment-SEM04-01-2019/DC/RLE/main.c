#include <stdio.h>
#include <string.h>
#include "data_compression.h"
#include "debug_helper.h"

void help();
string prog_name;
/* argc : argument count
 * argv : argument values*/
int main(int argc, char** argv) {
#ifdef DEBUG
    string str = "TEST STRING AAABBBCCCDEFFFF";
#endif
    prog_name = argv[0];
    if (argc == 3) {
        switch(*(argv[1]+1)) {
            case 's': {
                string encoded = rle_encode(argv[2], (int) strlen(argv[2]));
                printf("%s\n", encoded);
            } break;
            default: {
                help();
            }
        }
    } else if (argc == 1) {
        string str;
        while (get_line(&str) >= 0) {
            string encoded = rle_encode(str, (int) strlen(str));
            printf("%s", encoded);
        }
    } else {
        help();
    }
    return 0;
}

void help() {
    printf("Run-Length Encoder\n"
           "USAGE : %s -s <string>\n", prog_name);
}