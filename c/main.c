#include "include/rust_lib.h"

#include <stdio.h>

int main()
{
    int32_t x = 1;
    printf("%d\n", add_one_c(x));
    printf("%d\n", add_two_c(x));
    return 0;
}