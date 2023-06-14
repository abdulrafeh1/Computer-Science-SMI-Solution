#include<graphics.h>
#include<stdio.h>
#include <conio.h>
	void main()
	{
 int driver=DETECT,mode;

 int a[3][3]={5,6,7,8,9,10,11,12,13},i,j,k,x,y,t,cn=0,co=0;
 char c;
 static int nod=0,nn=0,sc[2]={0,0};
 nod++;
	clrscr();

	initgraph(&driver,&mode,"c:\\TURBOC3\\BGI");
	setbkcolor(BLUE);
	line(100,200,400,200);
	line(100,300,400,300);
	line(200,100,200,400);
	line(300,100,300,400);
	gotoxy(35,2);
	printf("TIC TAC TOE");
	gotoxy(20,3);
	gotoxy(10,5);
	printf(" BOX NO");
	gotoxy(15,7);
	printf("1");
	gotoxy(30,7);
	printf("2");
	gotoxy(45,7);
	printf("3");
	gotoxy(15,14);
	printf("4");
	gotoxy(30,14);
	printf("5");
	gotoxy(45,14);
	printf("6");
	gotoxy(15,21);
	printf("7");
	gotoxy(30,21);
	printf("8");
	gotoxy(45,21);
	printf("9");
	gotoxy(55,22);
	printf("RESULT");
	gotoxy(55,23);
	printf("****************");
	gotoxy(55,15);
	printf("P1-ABDUL RAFEH",sc[0]);
	gotoxy(55,16);
	printf("P2-WAQAR ALI",sc[1]);
 for(i=0;i<=2;i++)
	{
 for(j=0;j<=2;j++)
	{
	re:gotoxy(65,4);
	k=((i+j)%2+1);
	printf("Enter player %d",k);
	gotoxy(60,5);
	printf(" Box no from 1 to 9   ");
	t=getch();
	t=t-48;
 if(t==1)
 {
 x=0;y=0;
 goto play;
 }
 if(t==2)
 {
 x=1;y=0;
 goto play;
 }
 if(t==3)
 {
 x=2;y=0;
 goto play;
 }
 if(t==4)
 {
 x=0;y=1;
 goto play;
 }
 if(t==5)
 {
 x=1;y=1;
 goto play;
 }
 if(t==6)
 {
 x=2;y=1;
 goto play;
 }
 if(t==7)
 {
 x=0;y=2;
 goto play;
 }
 if(t==8)
 {
 x=1;y=2;
 goto play;
 }
 if(t==9)
 {
 x=2;y=2;
 goto play;
 }
 else
 {
 goto re ;}
 play:
 if((a[x][y]==1)||(a[x][y]==2))
 {
 goto re;
 }
 if((a[x][y]!=1)&&(a[x][y]!=2))
 {
 if(k==1)
 {
 circle(100*x+100+50,100*y+100+50,50);
 a[x][y]=k;co++;
 }
 if(k==2)
 {
 line(x*100+100,y*100+100,x*100+200,y*100+200);
 line(x*100+100,y*100+200,x*100+200,y*100+100);
 a[x][y]=k;co++;
 }
 }
 gotoxy(60,23);
 if((a[0][0]==a[1][0])&&(a[1][0]==a[2][0]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if((a[0][0]==a[0][1])&&(a[0][1]==a[0][2]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if((a[0][0]==a[1][1])&&(a[1][1]==a[2][2]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if((a[1][0]==a[1][1])&&(a[1][1]==a[1][2]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if((a[2][0]==a[2][1])&&(a[2][1]==a[2][2]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if((a[2][0]==a[1][1])&&(a[1][1]==a[0][2]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if((a[0][2]==a[1][2])&&(a[1][2]==a[2][2]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if((a[0][1]==a[1][1])&&(a[1][1]==a[2][1]))
 {
 printf("Player %d",k);
 printf(" wins");cn=1;sc[k-1]++;
 }
 if(cn==1)
 {
 goto que;}
 if(co==9)
 {
 gotoxy(62,23);
 printf("DRAW");
 nn++;
 goto que;}
 }
 }
 que:
 gotoxy(60,24);
 printf("Play again y/n");
 c=getch();
 if((c=='y')||(c=='Y'))
 {
 clrscr();
 main();
 getch();
 }
 else if((c=='n')||(c=='N'))
 {
 goto end;
 }
 else goto que;

 end:
 closegraph();
 printf("Final score is %d",sc[k-1]);
 printf(" - %d",nod-nn-sc[k-1]);
 gotoxy(20,10);
 printf("Thanks for playing this game\n");
 gotoxy(20,11);
 printf("Developed by ABDUL RAFEH & WAQAR ALI");
 getch();
 exit(0);
 }