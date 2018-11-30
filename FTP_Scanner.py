from ftplib import FTP
from datetime import datetime
from time import time
from time import strftime
import ftplib
import socket
import sys


print "   _____                       ________________________________ "
print "  /  _  \   ____   ____   ____ \_   _____/\__    ___/\______   \ "
print " /  /_\  \ /    \ /  _ \ /    \ |    __)    |    |    |     ___/ "
print "/    |    \   |  (  <_> )   |  \|     \     |    |    |    |    "
print "\____|__  /___|  /\____/|___|  /\___  /     |____|    |____|   " 
print "        \/     \/            \/     \/                         " 
print "# ----------------------------------------------------------- #"
print ""
filename = raw_input("File: ") 
date = datetime.now()
print ""
try:
    try:
        ftpaddrz = open(filename,"r")

    except:
        print filename+" File Not Found!" 
        sys.exit()
    print "Started at: ",date
    print ""
    for ftpaddr in ftpaddrz.read().split('\n'):
        ftpaddr = ftpaddr.replace("ftp://","")
        output = open("success.txt","a")
        try:
      
            ftp = FTP(ftpaddr, timeout = 2)
            ftp.login() 
            out = ftpaddr
            print "[*] Anonymous Login Sucessfully ^^ -> " + out
            output.writelines(out+"\n")
            print ""
        except (ftplib.all_errors):
            print "[-] Anonymous Login Failed -> "+ftpaddr+"\n"
            pass
        except (AttributeError):
            print "[*] End of Search don't have more string on the file ^^"
            print "[*] Finished at: ",date
            sys.exit()
except (KeyboardInterrupt):
    print "[!] Session cancelled"