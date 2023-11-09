#include <klee/klee.h>
int main(){
int a;
klee_make_symbolic(&a,sizeof(int),"a");
if (a % 2 ==0) return 1;
else return 0;
}
