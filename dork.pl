#!/usr/bin/perl
#GS-Dorker | Coded By Fallag Gassrini | Tunisian Fallaga Team

use if $^O eq "MSWin32", Win32::Console::ANSI;
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
main:;
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);


$list= "Sites.txt";
 print color('blue');
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
my $datetime    = localtime;
system("title GS-Dorker | Coded By Fallag Gassrini");
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

";
print $logo;
print color('reset');
print "                      	            ";
print colored("[+]",'black on_blue');
print colored("Security Xploit Attacker v1.0",'red on_cyan');
print colored("[+]\n",'black on_blue');
print "              	                 ";
print colored("[+]",'black on_blue');
print colored ("Start At $datetime",'black on_cyan'),"";
print colored("[+]\n\n",'black on_blue');

print color('bold red'),"[";
print color('bold black'),"1";
print color('bold red'),"] ";
print color("bold white"),"Bing Doker     |> Here You Chose The Country That You Want\n";
print color('bold red'),"[";
print color('bold black'),"2";
print color('bold red'),"] ";
print color("bold white"),"Bing Dorker    |> Here I Will Grab Using Ur Dork World Wide Country Websites\n";
print color('bold red'),"[";
print color('bold black'),"3";
print color('bold red'),"] ";
print color("bold white"),"Mass Site Grab |> By Ip or Websites List\n";
print color('bold red'),"[";
print color('bold black'),"4";
print color('bold red'),"] ";
print color("bold white"),"Mass Site Grab |> Range Ip by Ip or Website list\n";;
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"Choose Number : ";
my $item = <STDIN>;
chomp $item;

if($item eq '1')
{
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"[Here You Can Choose The Country Dork exp: inurl:.asp?id= site:co.il ]\n";
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"Dork:";
$dork=<STDIN>;
chomp($dork);
$dork=~s/ /+/g;
gassonee();
}

if($item eq '2')
{
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"[Just Put Your Dork And I will Scan All World Sites Area ]\n";
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"Dork:";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;

@country= ("af","al","dz","as","ad","ao","ai","aq","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","bv","br","io","bn","bg","bf","bi","kh","cm","ca","cv","ky","cf","td","cl","cn","cx","cc","co","km","cg","cd","ck","cr","ci","hr","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","tf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gu","gt","gn","gw","gy","ht","hm","hn","hk","hu","is","in","id","iq","ie","il","it","jm","jp","jo","kz","ke","ki","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mk","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","ms","ma","mz","na","nr","np","nl","an","nc","nz","ni","ne","ng","nu","nf","mp","no","om","pk","pw","ps","pa","pg","py","pe","ph","pn","pl","pt","pr","qa","re","ro","ru","rw","kn","lc","vc","ws","sm","st","sa","sn","cs","sc","sl","sg","sk","si","sb","so","za","gs","kr","es","lk","sh","pm","sr","sj","sz","se","ch","tw","tj","tz","th","tg","tk","to","tt","tn","tr","tm","tc","tv","ug","ua","ae","gb","us","um","uy","uz","vu","va","ve","vn","vg","vi","wf","eh","ye","zm","zw");

OUTER: foreach $country(@country){
chomp $country;
$dork="$dor+site:$country";
print color("yellow"),"[Country : ";
print color('reset');
print color("white"),"$country]\n";
print color('reset');
gassone();
}
}

if($item eq '3')
{
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white")," Path to your websites list:";
my $list=<STDIN>;
chomp($list);



OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
get();
}else{
get();
}

}


}
if($item eq '4')
{
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"Path to your websites list : ";
my $list=<STDIN>;
chomp($list);


OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
gett();
}else{
gett();
}

}
}else{
      goto main;  
};

##############################
sub gett(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color("red"), " [IP] > [$ips]\n";
print color ('reset');
        open (TEXT, '>>IPs.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
}
}
}
#############################
sub get(){

$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print " [IP] > [$ips]\n";
        open (TEXT, '>>IPs.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
}
####################################"
sub gassone(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
        if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
        {
                                if ($link !~ /^http:/)
                         {
                                $link = 'http://' . "$link" . '/';
                         }



if($link !~ /\"|\?|\=|index\.php/){
                                        if  (!  grep (/$link/,@result))
                                        {
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"$link\n";
open(save, '>>Sites.txt');
    print save "$link\n";
    close(save);
                                                push(@result,$link);
                                        }
}
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
next OUTER;
}
}
}
###########
sub gassonee(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
        if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
        {
                                if ($link !~ /^http:/)
                         {
                                $link = 'http://' . "$link" . '/';
                         }



if($link !~ /\"|\?|\=|index\.php/){
                                        if  (!  grep (/$link/,@result))
                                        {
print color('bold red'),"[";
print color('bold black'),"+";
print color('bold red'),"] ";
print color("bold white"),"$link\n";
open(save, '>>Sites.txt');
    print save "$link\n";
    close(save);
                                                push(@result,$link);
                                        }
}
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
exit;
}
}
}
