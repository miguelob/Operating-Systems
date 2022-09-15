#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char *argv[])
{
    int X = 5 * 1024 - 1;
    FILE *f;

    f = fopen(argv[1], "w");
    fseek(f, X, SEEK_SET);
    fputc('\0', f);
    int c = fclose(f);
    
    print("hi");
    return 0;
}
