#!/usr/bin/perl
#www.facebook.com/ph.hitachi.org
#About
use if $^O eq "MSWin32", Win32::Console::ANSI;
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);



 print color('WHITE');
 system("title About");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
my $datetime    = localtime;
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print q{
    [______J888888888888____________________J888888888888L______]
  [____________8888_J'788888____________J888888'LJ888P______L____8
  [________________88L,788888_________J8888P__8P'________________8
  [____________________88LJ788_________78__J8P___________________7 
  [_____________________788L_____________J88_____________________] 
  8________________________888__________8________________________] 
  8__________88888888L_____]888________________J88888888L,_______] 
  8______J8888888888888888,'888[__________.J888888888888888L,____] 
  8____8888888888888888888  888[___________8888888888888888P""8888 
  8___]""""________________]888[_________________________________] 
  8________________________]888[_________________________________] 
   L8______________________]888[_________________________________] 
   888_____________________8888[_________________________________J 
     88____________________8888[________________________________]8 
   L  88__________________88888[______________________________]88 
    8  888__________J`.88888888_____________________________JP`]8 
     L 788]888_________888`]888_____________________888888'88`]8 
     8[  8  88L________7[__]88P_______________________88P`]8[`J 
      8   8,'888,___________88[_____________________]88P`]8[`]8 
       8   7_,88888_,_______888, .J8[_________._888   8  8  88 
        8[  78,]8888888888888888888888888    _8888888``J8   8 
         8[   8L,  788888888888P    88888888888888'__J88   8 
          8[   888[     788888P      788888888_______J   ]8
            8L  7888___________'""""""______________8___J 
            88,  888878___________________________8____J 
              8,__'888____'""`_______,___________J'___] 
               8[__'8L_________888888[__________8___J 
                 8,`]8,________]8888[__________P___J 
                  8,___________88888L____________J 
                   8L_________8888P88[__________J 
                     8L_______8888888[________8 
                       L______'888888_______J 
                         L_____88888[_____]8 
                          8____]8888[____J8 
                            888888888888

                       
};

print color('reset');
print "              ";
print colored("[+]",'green on_blue');
print colored("Security Xploit Attacker v1.0",'red on_cyan');
print colored("[+]\n",'green on_blue');
print "           ";
print colored("[+]",'green on_blue');
print colored ("Start At $datetime",'white on_cyan'),"";
print colored("[+]\n\n",'green on_blue');
print color('bold red'),"[";
print color('bold green'),"1";
print color('bold red'),"] ";
print color("bold white"),"Anonymous DDoser \n";
print color('bold red'),"[";
print color('bold green'),"2";
print color('bold red'),"] ";
print color("bold white"),"Skull DDoser with Proxy\n";
print color('bold red'),"[";
print color('bold green'),"3";
print color('bold red'),"] ";
print color("bold white"),"Back\n";
print color('bold red'),"[";
print color('bold green'),"4";
print color('bold red'),"] ";
print color("bold white"),"Exit\n";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color("bold white"),"Choose Number : ";
my $item = <STDIN>;
chomp $item;
if($item eq '1')
{
system ("ddosv1.py");
}
if($item eq '2')
{
system ("ddosv2.py");
}
if($item eq '3')
{
system ("xploit.pl");
}
if($item eq '4')
{
print color ("red"),"Good bye..";
exit;
}
$list=<STDIN>;
chomp $list;
    open (THETARGET, "<$list") || die "[-] Can't open the file";
@TARGETS = <THETARGET>;
close THETARGET;
