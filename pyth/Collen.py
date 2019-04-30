#!/usr/bin/python3.4

# comment 1

def useless():
	return;

if __name__ == "__main__" :
	# comment 2
	useless()
	chaine = "#!/usr/bin/python3.4{0}{0}# comment 1{0}{0}def useless():{0}{1}return;{0}{0}if __name__ == {2}__main__{2} :{0}{1}# comment 2{0}{1}useless(){0}{1}chaine = {2}{3}{2}{0}{1}print(chaine.format(chr(10), chr(9), chr(34), chaine))"
	print(chaine.format(chr(10), chr(9), chr(34), chaine))
