void test00(int x) {
  if (x < 10)
     x = x + 10;
  else
     x = x + 1;
  
  if (x > 50)
     x = x + 2;
  else
     x = x + 20;
  
  if (x > 100)
     x = x + 3;
  else
     x = x + 30;
  
} 

void main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  test00(a);
}
