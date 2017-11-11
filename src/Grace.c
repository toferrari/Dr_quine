#include <stdio.h>
#include <fcntl.h>

#define AGAIN(x) int main(){char*s="#include <stdio.h>%c#include <fcntl.h>%c%c#define AGAIN(x) int main(){char*s=%c%s%c;int fd = open(%cGrace_kid.c%c, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);dprintf(fd,s,10,10,10,34,s,34,34,34,10,10,10);}%c%cAGAIN(x)%c";int fd = open("Grace_kid.c", O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);dprintf(fd,s,10,10,10,34,s,34,34,34,10,10,10);}

AGAIN(x)
