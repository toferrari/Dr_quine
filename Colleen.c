#include <stdio.h>

void	fct_useless(void)
{
	/*
		commentaire 2
	*/
}

int		main(void)
{
	char*a="#include <stdio.h>%c%cvoid%cfct_useless(void)%c{%c%c/*%c%c%ccommentaire 2%c%c*/%c}%c%cint%c%cmain(void)%c{%c%cchar*a=%c%s%c;%c%c%c/*%c%c%ccommentaire 1%c%c*/%c%cfct_useless();%c%cprintf(a,10,10,9,10,10,9,10,9,9,10,9,10,10,10,9,9,10,10,9,34,a,34,10,10,9,10,9,9,10,9,10,9,10,9,10,9,10,10);%c%creturn (0);%c}%c";

	/*
		commentaire 1
	*/
	fct_useless();
	printf(a,10,10,9,10,10,9,10,9,9,10,9,10,10,10,9,9,10,10,9,34,a,34,10,10,9,10,9,9,10,9,10,9,10,9,10,9,10,10);
	return (0);
}
