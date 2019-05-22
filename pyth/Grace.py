#!/usr/bin/python3.4
import os#comment
file="Grace_kid.py"
f= open(file,"w")
os.chmod(file, 447)
chaine="#!/usr/bin/python3.4{0}import os#comment{0}file={2}Grace_kid.py{2}{0}f= open(file,{2}w{2}){0}os.chmod(file, 447){0}chaine={2}{3}{2}{0}f.write(chaine.format(chr(10), chr(9), chr(34), chaine)){0}f.close(){0}"
f.write(chaine.format(chr(10), chr(9), chr(34), chaine))
f.close()
