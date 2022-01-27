#include <rust_lib.h>

#include <iostream>
using std::cout;

auto add_one_cpp(auto x)
{
    return x + 1;
}

int main()
{
    int32_t x = 1;
    cout << "add_one_rust(1) = " << add_one_rust(x) << "\n";
    cout << "add_two_rust(1) = " << add_two_rust(x) << "\n";
    cout << "add_one_cpp(1) = " << add_one_cpp(x) << "\n";
}