#include <stdio.h>
#include <sys/types.h>
#include <sys/signal.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <unistd.h>
#include <sys/user.h>

int main()
{   
    pid_t child;
    long  orig_eax;
    child = fork();
    if(child == 0)
    {
        ptrace(PT_TRACE_ME, 0, NULL, NULL);
        execl("/bin/ls","ls",NULL);
    }
    else
    {
        wait(NULL);
        orig_eax = ptrace(PT_READ_D,child, 4*orig_eax, NULL);
        printf("The child made a system call %ld\n", orig_eax);
        ptrace(PT_CONTINUE, child, NULL, NULL);
    }
    return 0;
}
