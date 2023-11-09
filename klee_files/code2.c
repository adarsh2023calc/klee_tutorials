#include <klee/klee.h>
#include <assert.h>

int main() {
  int x, y;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_make_symbolic(&y, sizeof(y), "y");

  if (x > 10 && y < 5) {
    x = x + 10;
    y = y * 2;
  } else {
    x = x - 5;
    y = y + 1;
  }

  assert(x >= 0);

  return 0;
}
