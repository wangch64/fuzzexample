#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>

int vuln(char *str)
{
        int len = strlen(str);
        if (str[0]=='A' && len ==66)
        {
                raise(SIGSEGV);
        }
        else if(str[0]=='F' && len ==6)
        {
                raise(SIGSEGV);
        }
        else
        {
                printf("it is good!\n");
        }
        return 0;
}

int main(int argc, char *argv[])
{
        char buf[100] = {0};
        gets(buf); //vulnerable
        printf(buf); //vulnerable
        vuln(buf);

        return 0;
}
