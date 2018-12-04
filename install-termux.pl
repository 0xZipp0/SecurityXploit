use if $^O eq "MSWin32", Win32::Console::ANSI;
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
system("chmod +x SecurityXploit/termux.sh");
system("bash SecurityXploit/termux.sh");
system("perl Xploit.pl");