# include <stdio.h>
#include <klee/klee.h>
int main(){
	int y =0;
	while(!y)
	{
		int x;
		klee_make_symbolic(&x,sizeof(int),"x");
		if (x > 5) y = x + 2;
		else y = x * 2;
		if(y > 100 && y < 180) x = x + 2;
		else
		{
			if(y > 60 && y < 70) x = x + 15;
			else
			{
				if(y > 65) x++;
				else x = x + 5;

			}

		}
		if(x < 50 && x > 44) x = x + 65;
		else x = x + 20;
	}

}
