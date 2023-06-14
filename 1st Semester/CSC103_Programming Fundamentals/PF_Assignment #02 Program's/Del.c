#include<stdio.h>
#include<conio.h>
int main() 
{ 
   if (remove("C:\\Dev-Cpp\\123.txt") == 0) 
      printf("Deleted successfully"); 
   else
      printf("Unable to delete the file"); 
  
   getch(); 
} 
