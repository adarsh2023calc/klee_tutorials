# include <stdio.h>
#include <klee/klee.h>

int counter(char * arr,int size)
{
	int count =0;
	for (int i =0;i < size;i++)
	{
		if(arr[i] =='a' | arr[i] =='e' | arr[i] =='i' |arr[i] =='o' |arr[i]=='u' | arr[i] =='A' | arr[i] =='E' | arr[i] =='I' | arr[i] =='O' |arr[i] =='U') count ++;
        

	}
	return count;

}
int main()
{
	char arr[100];
	klee_make_symbolic(arr,sizeof(arr),"string");
	int vowel = counter(arr,100);
	if(vowel > 50) return 1;
	else  return 0;
	


}

