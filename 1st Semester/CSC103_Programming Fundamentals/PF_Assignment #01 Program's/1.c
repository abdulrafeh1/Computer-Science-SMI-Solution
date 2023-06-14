#include<stdio.h>
#include<conio.h>
void main()
    {
    Int amt;
    int pkr500, pkr100,pkr50,pkr20,pkr10,pkr5;
    pkr500=pkr100=pkr50=pkr20=pkr10=pkr5=0;
    clrscr();
    printf(“Put Any Amt : ");
    scanf(“%d”, &amt);

    if(amt >= 500)
    {
    pkr500 = amt/500;
    amt = amt - (pkr500*500);
    }
    if(amt >= 100)
    {
    pkr100 = amt/100;
    amt = amt - (pkr100*100);
    }
    if(amt >= 50)
    {
    pkr50 = amt/50;
    amt = amt - (pkr50*50);
    }
    if(amt >= 20)
    {
    pkr20 = amt/20;
    amt = amt - (pkr20*20);

   

    }
    if(amt >= 10)
    {
    pkr10 = amt/10;
    amt = amt - (pkr10*10);
    }
    if(amt >= 5)
    {
    pkr5 = amt/5;
    amt = amt - (pkr5*5);
    }
    printf("Check PKR Currency for Your Enter Amount \n");
    printf("  PKR 500 = %d\n ",pkr500);
    printf(" PKR 100 = %d\n ",pkr100);
    printf(" PKR 50  = %d\n ",pkr50);
    printf(" PKR 20  = %d\n ",pkr20);
    printf(" PKR 10  = %d\n ",pkr10);
    printf(" PKR 5   = %d\n ",pkr5);
    getch();
    }
