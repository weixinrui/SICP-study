#include <stdio.h>
int gcd(int a,int b);
int main(void)
{
	printf("%d", gcd(204,40));
	return 0;
}
int gcd(int a,int b)
{
	if(b == 0)
		return a;
	gcd(b,a%b);
}
