#include "include/rust_lib.h"

#include <iostream>
using std::cout;

int main()
{
    int32_t x = 1;
    cout << "x + 1 = " << add_one_c(x) << "\n";
    cout << "x + 2 = " << add_two_c(x) << "\n";
    return 0;
}