#include <klee/klee.h>
int PalindromeNum(int number,int rev){
	if (!number) return rev;
	rev *=10;
	rev += number % 10;
	return PalindromeNum(number/10,rev);
}

int main(){
   int number,res;
   klee_make_symbolic(&number,sizeof(int),"num");
   if (number < 0) res =-( PalindromeNum(-number,0));
   else res = PalindromeNum(number,0);
   if (res == number) assert("1");
   else assert("0");

   
   return 0;
}
