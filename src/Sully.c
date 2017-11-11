#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>

int main (int ac, char **av)
{
	char*s="#include <stdlib.h>%c#include <stdio.h>%c#include <fcntl.h>%c#include <string.h>%c%cint main (int ac, char **av)%c{%c%cchar*s=%c%s%c;%c%cint i = %d;%c%cif (i == 0 %% ac)%c%c%creturn (0);%c%cif (!strcmp(av[0],%c./Sully%c))%c%c%ci++;%c%cchar str[10];sprintf(str,%cSully_%%d.c%c, i-1);%c%cint fd = open(str, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);%c%cdprintf(fd,s,10,10,10,10,10,10,10,9,34,s,34,10,9,i-1,10,9,10,9,9,10,9,34,34,10,9,9,10,9,34,34,10,9,10,9,10,9,34,34,10,10);%c%cchar a[100];sprintf(a,%cclang Sully_%%d.c -o Sully_%%d && ./Sully_%%d%c, i-1,i-1,i-1);system(a);%c}%c";
	int i = 5;
	if (i == 0 && ac)
		return (0);
	if (!strcmp(av[0],"./Sully"))
		i++;
	char str[10];sprintf(str,"Sully_%d.c", i-1);
	int fd = open(str, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
	dprintf(fd,s,10,10,10,10,10,10,10,9,34,s,34,10,9,i-1,10,9,10,9,9,10,9,34,34,10,9,9,10,9,34,34,10,9,10,9,10,9,34,34,10,10);
	char a[100];sprintf(a,"clang Sully_%d.c -o Sully_%d && ./Sully_%d", i-1,i-1,i-1);system(a);
}
