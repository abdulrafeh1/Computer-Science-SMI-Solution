#include<stdio.h>
#include<conio.h>
int main()
{
  int status;
  char folder_name[25];

  printf("Enter the folder name / Address you want to delete\n");
  gets(folder_name);

  status = rmdir(folder_name);

  if (status == 0)
    printf("%s folder deleted successfully.\n", folder_name);
  else
  {
    printf("Unable to delete the folder\n");
    perror("Following error occurred");
  }

  getch();
}
