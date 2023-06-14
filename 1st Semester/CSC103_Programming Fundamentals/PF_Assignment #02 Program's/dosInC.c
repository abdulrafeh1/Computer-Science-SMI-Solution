#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<dos.h>

int main()
{
	printf("Enter your option:\n- Press '1' for 'cls'.\n- Press '2' for 'exit'.");
	int option;
	scanf("%d", &option);
	switch(option){ 
		case 1:
			{
				system("cls");
				break;
			}
		
			case 2:
			 {
				system("exit");
				break;
            }}
            getch();
}
