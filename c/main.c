#include "include/rust_lib.h"

#include <stdio.h>

int main() {
  int32_t x = 1;
  x = add_one_c(x);
  printf("%d\n", x);
  return 0;
}