#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>

int main (void)
{
	char*s="#include <stdlib.h>%c#include <stdio.h>%c#include <fcntl.h>%c#include <string.h>%c#include <unistd.h>%c%cint main (void)%c{%c%cchar*s=%c%s%c;%c%cint i = %d;%c%cFILE *f;%c%cif (i <= 0)%c%c%creturn (0);%c%cchar str[10];sprintf(str,%cSully_%%d.c%c, i);%c%ci+= ((f = fopen(str, %cr%c))) ? 0 : 1;%c%csprintf(str,%cSully_%%d.c%c, i-1);%c%cint fd = open(str, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);%c%cdprintf(fd,s,10,10,10,10,10,10,10,10,9,34,s,34,10,9,i-1,10,9,10,9,10,9,9,10,9,34,34,10,9,34,34,10,9,34,34,10,9,10,9,10,9,34,34,10,9,10,10);%c%cchar a[100];sprintf(a,%cclang Sully_%%d.c -o Sully_%%d && ./Sully_%%d%c, i-1,i-1,i-1);system(a);%c%cclose(fd);%c}%c";
	int i = 5;
	FILE *f;
	if (i <= 0)
		return (0);
	char str[10];sprintf(str,"Sully_%d.c", i);
	i+= ((f = fopen(str, "r"))) ? 0 : 1;
	sprintf(str,"Sully_%d.c", i-1);
	int fd = open(str, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
	dprintf(fd,s,10,10,10,10,10,10,10,10,9,34,s,34,10,9,i-1,10,9,10,9,10,9,9,10,9,34,34,10,9,34,34,10,9,34,34,10,9,10,9,10,9,34,34,10,9,10,10);
	char a[100];sprintf(a,"clang Sully_%d.c -o Sully_%d && ./Sully_%d", i-1,i-1,i-1);system(a);
	close(fd);
}
