#!/usr/bin/python3.4
import os.path
import os
import sys
def sully():
	i = 5;
	if  os.path.exists("sully_{}.py".format(i))==False:
		i += 1;
	if (i > 0):
		name = "sully_{}.py".format(i-1)
		new_name = open(name,'w')
		chaine = "#!/usr/bin/python3.4%cimport os.path%cimport os%cimport sys%cdef sully():%c%ci = %d;%c%cif  os.path.exists(%csully_{}.py%c.format(i))==False:%c%c%ci += 1;%c%cif (i > 0):%c%c%cname = %csully_{}.py%c.format(i-1)%c%c%cnew_name = open(name,%cw%c)%c%c%cchaine = %c%s%c%c%c%cnew_name.write(chaine %c (10,10,10,10,10,9,i-1,10,9,34,34,10,9,9,10,9,10,9,9,34,34,10,9,9,39,39,10,9,9,34,chaine,34,10,9,9,37,10,9,9,10,9,9,34,34,10))%c%c%cnew_name.close()%c%c%cos.system(%cpython3.4 sully_{}.py%c.format(i-1))%csully()"
		new_name.write(chaine % (10,10,10,10,10,9,i-1,10,9,34,34,10,9,9,10,9,10,9,9,34,34,10,9,9,39,39,10,9,9,34,chaine,34,10,9,9,37,10,9,9,10,9,9,34,34,10))
		new_name.close()
		os.system("python3.4 sully_{}.py".format(i-1))
sully()
