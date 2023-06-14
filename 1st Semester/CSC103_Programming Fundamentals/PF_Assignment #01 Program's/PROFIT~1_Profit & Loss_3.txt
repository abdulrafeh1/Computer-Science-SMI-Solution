#include<stdio.h>
#include<conio.h>
void main()
          {
	int c_price,s_price,p_amt,l_amt;
	clrscr();
	printf(“Put Cost Price:  ”);
	scanf(“%d”, &c_price);
	printf(“Put Selling Price:  ”);
	scanf(“%d”, &s_price);

	if(s_price>c_price)
	{
	P_amt = s_price-c_price;
	printf("\n Profit Amount : %d\n", p_amt);
	}
	if(c_price>s_price)
	{
	l_amt = c_price-s_price;
	printf("\n Loss Amount : %d\n", l_amt);
	}
	getch();
	}
