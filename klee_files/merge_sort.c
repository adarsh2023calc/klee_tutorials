#include <stdio.h>
#include <stdlib.h>
#include <klee/klee.h>

void merge(int *arr, int first,int mid,int last)
{
        int i =0;
        int j =0;
        int k= first;
        int n1 =( mid - first)+1;
        int n2 = (last-mid);
        int *left= (int *)malloc(n1*(sizeof(int)));
        int *right = (int *)malloc(n2*(sizeof(int)));

        for ( i =0;i< n1;i++) left[i] = arr[first+i];
        for(j =0 ; j < n2;j++) right[j] = arr[mid +j+1];
        i =0; j =0;
        while(i < n1 && j < n2 )
        {
                if(left[i] > right[j])
                {
                        arr[k] = right[j];
                        k+=1;
                        j+=1;
                }
                else
                {
                        arr[k] = left[i];
                        i+=1;
                        k+=1;
                }
        }
        while(i < n1)
        {
                arr[k] = left[i];
                i+=1;
                k+=1;
        }
        while(j < n2)
        {
                arr[k] = right[j];
                j+=1;
                k+=1;
        }
        free(left);
        free(right);
}

int merge_array(int *arr, int first, int last)
{
        int mid = (last + first) /2;
        if (first != last)
        {
                merge_array(arr, first,mid);
                merge_array(arr, mid +1,last);
                merge(arr,first,mid,last);
        }

}
int main(){
    int arr[10];
    klee_make_symbolic(arr,sizeof(arr),"array");
    printf("\n");
    merge_array(arr,0,9);
    for (int i =0;i < 10;i++) printf("%d ",arr[i]);

}

