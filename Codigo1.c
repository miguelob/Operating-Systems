#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void)
{
    int X = 5 * 1024 - 1;
    FILE *f;
    clock_t t;
    t = clock();
    f = fopen("File.txt","w");
    fseek(f, X , SEEK_SET);
    fputc('\0', f);
    int c =fclose(f);
	if(c==0)    //Check that the file has been closed and saved successfully.
    {
        printf("\nFile closed successfully");
    }
    else
    {
        printf("\nFile did not close");
    }
    printf("\nFile created in %.5f seconds\n",((double)clock()-t)/CLOCKS_PER_SEC);
    
    return 0;
}