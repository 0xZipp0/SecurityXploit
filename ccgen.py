import sys, random ,time, os

time.sleep(1)
def generator():
    bin = raw_input("Enter Bin (Ex :483745) : ")
    m =  raw_input("Month (Ex :01)   : ")
    y =  raw_input("Year  (Ex :2022) : ")
    i=1 
	
    for i in range(0,200): #range of generate
            i=i+1
	    code = random.randint(100,999) #Security Code
	    number = random.randint(1000000000,9999999999) # Limit of CreditCard Number
	    creditcard = (bin,number)
	    cc = "%s%s"%(creditcard)
	    all = cc,"|",m,"|",y,"|",code
	    allstring = "%s%s%s%s%s%s%s"%(all)
	    print allstring

generator()
