#include <klee/klee.h>
int main()
{
	int arr[10] = {0,1,2,3,4,5,6,7,8,9};
	int ele = 6,pos,flag=0;
	klee_make_symbolic(&ele,sizeof(int),"ele");
	int start = 0;int end = 9;
        int mid,swap;
        while(start <= end)
        {
                mid = (start + end)/2;
                if(arr[mid] == ele )
		{
			flag = 1;
		       	pos = mid;break;
		}
                else if(arr[mid] > ele) end = mid;
                else start = mid;


        }
	if(flag) return pos;
	return -1;

}
