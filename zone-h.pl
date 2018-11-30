#!/usr/bin/perl 
#zone-h poster
#facebook.com/ph.hitachi.org/

use URI::URL;
use LWP::UserAgent;
use Term::ANSIColor;
use IO::Socket::INET;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);

my $datetime    = localtime;

@months = qw(01 02 03 04 05 06 07 08 09 10 11 12);
($second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings) = localtime();
$year = 1900 + $yearOffset;
$month = "$months[$month]";

system(($^O eq 'MSWin32') ? 'cls' : 'clear');
print color("red");
 system("title Zone-h Mass Poster");
$logo="
 _______  _______  __    _  _______         __   __    
|       ||   _   ||  |  | ||       |       |  | |  |   
|____   ||  | |  ||   |_| ||    ___|       |  |_|  |   
 ____|  ||  | |  ||       ||   |___   ___  |       |   
| ______||  | |  ||  _    ||    ___| |___| |   _   |   
| |_____ |  |_|  || | |   ||   |___        |  | |  |   
|_______||_______||_|  |__||_______|       |__| |__|                     
					 _______  _______  _______  _______  _______  ______   	
					|    _  ||   _   ||       ||       ||       ||    _ |  
					|   | | ||  | |  ||  _____||_     _||    ___||   | ||  
					|   |_| ||  | |  || |_____   |   |  |   |___ |   |_||_ 
					|    ___||  | |  ||_____  |  |   |  |    ___||    __  |
					|   |    |  |_|  | _____| |  |   |  |   |___ |   |  | |
					|___|    |_______||_______|  |___|  |_______||___|  |_|\n\n
					
";
print $logo;
print color('reset');
print "                      	                       ";
print colored(" Powered by \n",'white on_red');
print "                      	           ";
print colored("[+]",'green on_blue');
print colored("Security Xploit Attacker v1.0",'red on_cyan');
print colored("[+]\n",'green on_blue');
print "              	                 ";
print colored("[+]",'green on_blue');
print colored ("Start At $datetime",'black on_cyan'),"";
print colored("[+]\n\n",'green on_blue');
print colored("\t\t\t\t\t Usage:",'white');
print colored("defaced.txt\n",'red');
print colored("Enter your defaced site list :",'cyan');
my $list=<STDIN>;
chomp($list);
  open (THElinks, "<$list") || die "[-] Can't open the linkss List, Make Sure Your File is Correct!";
@linksS = <THElinks>;
close THElinks;
$link=$#linksS + 1;
foreach $links(@linksS){
chomp($links);



$req = HTTP::Request->new(GET=>$links);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($req);
$ar = $response->content;
if ($ar =~ /Hacked|/){
open (TEXT, '>>Result/Zone-h.txt');
print TEXT "\n$links   =>posted\n";
print TEXT "\nDefacer Onhold: http://www.zone-h.org/archive/notifier=$defacer/published=0\nDefacer Archive: http://www.zone-h.org/archive/notifier=$defacer\n";
close (TEXT);
                                $domain= $links;
                                $defacer="ph.hitachi";# CHANGE IT BY YOUR NICK.
                                $zoneh="http://zone-h.org/notify/single"; 
                                $lwp=LWP::UserAgent->new;
                                $res=$lwp  -> post($zoneh,[
				'defacer'     => $defacer,
				'domain1'   => $domain,
				'hackmode' => '15',
				'reason'       => '1',
				'submit'       => 'Send',
                                ]);
				if ($res->content =~ /color="red">OK<\/font><\/li>/) {
				print "$domain";print color ('green')," => OK\n";
				
                                }
                           else
                                {
                                print "$domain";print colored (" =>ERROR",'red'),"\n";
								print ('reset');
                                     }
									 }
									 

}