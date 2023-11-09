#include <klee/klee.h>
int main()
{
	int target =10;
	int x;
	klee_make_symbolic(&x,sizeof(int),"x");
	while(target)
	{
		if(x > 23){
			if (x < 100){
			   while (x % 27 !=0){
			         x+= 100;
				 target--;
			   }
			}
			else target++;

		}
		else{
		 while (target % 100 == 0) target--;
		}
	}
}
