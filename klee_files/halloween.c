# include <klee/klee.h>
int main()
{
	int arr[5],sum=0,avg;
	klee_make_symbolic(&arr,sizeof(arr),"array");
	for (int i=0;i < 5;i++) sum+= arr[i];
	if (! sum % 5) return 1;
	else
	{
		avg = sum / 5;
		for (int i =0; i < 5;i++)
		{
			if ((avg - arr[i]) % 2 !=0)return 0;

		}
		return 1;



	}
}
