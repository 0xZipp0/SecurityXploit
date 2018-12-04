use if $^O eq "MSWin32", Win32::Console::ANSI;
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
system("chmod +x termux.sh");
system("bash termux.sh");
