#include<stdio.h>
#include<conio.h>
void main()
           {
	int numb;
	clrscr();
            printf(“Put your numb:");
	scanf("%d",&numb);

	if(numb >=500)
	{
	printf("You are eligible for admission in SMI University");
	}
	if(numb <=499)
	{
	printf("You are not eligible for admission in SMI University");
	}
	getch();
            }
