#include<stdio.h>
#include<conio.h>
void main()
            {
             Char grade = 'A';
	 clrscr();
	 switch(grade) {
	 case 'A' :
	 printf("Excellent! ABDUL RAFEH You Got 75 percent\n" );
	 break;
	 case 'B' :
	 printf("Well done You Got 65 percent\n" );
	 break;
	 case 'C' :
	 printf("Fair You Got 55 percent\n" );
	 break;
	 case ‘D’:
	 printf(“You just cleared with 40 percent\n”);
	 break;
	 case ‘F’ :
	 printf(“Attempt Over\n”);
	 break;
	 default :
	 printf(“Unacceptable grade\n”);
	 }
	 Printf(“Your grade is   %c\n”,grade);
	 getch();
	 }
