#include<stdio.h>
#include<conio.h>
int main()
{
  int status;
  char file_name[25];

  printf("Enter the file name you want to delete\n");
  gets(file_name);

  status = remove(file_name);

  if (status == 0)
    printf("%s file deleted successfully.\n", file_name);
  else
  {
    printf("Unable to delete the file\n");
    perror("Following error occurred");
  }

  getch();
}
