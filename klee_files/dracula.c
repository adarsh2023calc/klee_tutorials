#include <klee/klee.h>
int main()
{
     int pieces;
     klee_make_symbolic(&pieces,sizeof(int),"pieces");
     if (pieces % 2  ==0 || pieces == 1) return 1;

     else return 0;

          
}
