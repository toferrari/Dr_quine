#include <stdio.h>//comment
#include <fcntl.h>

#define COTE 34
#define NAME "Grace_kid.c"
#define AGAIN(x) int main(){char*s="#include <stdio.h>//comment%c#include <fcntl.h>%c%c#define COTE 34%c#define NAME %cGrace_kid.c%c%c#define AGAIN(x) int main(){char*s=%c%s%c;int fd = open(NAME, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);dprintf(fd,s,10,10,10,10,COTE,COTE,10,COTE,s,COTE,10,10,10);}%c%cAGAIN(x)%c";int fd = open(NAME, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);dprintf(fd,s,10,10,10,10,COTE,COTE,10,COTE,s,COTE,10,10,10);}

AGAIN(x)
