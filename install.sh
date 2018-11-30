clear
echo "
██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
";
if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/xploit"
    BIN_DIR="$PREFIX/bin/"
    BASH_PATH="$PREFIX/bin/bash"
    TERMUX=true

    pkg install -y git python2
elif [ "$(uname)" = "Darwin" ]; then
    INSTALL_DIR="/usr/local/xploit"
    BIN_DIR="/usr/local/bin/"
    BASH_PATH="/bin/bash"
    TERMUX=false
else
    INSTALL_DIR="$HOME/.xploit"
    BIN_DIR="/usr/local/bin/"
    BASH_PATH="/bin/bash"
    TERMUX=false

    sudo apt-get install -y git python2.7
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[◉] A directory xploit was found! Do you want to replace it? [Y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        if [ "$TERMUX" = true ]; then
            rm -rf "$INSTALL_DIR"
            rm "$BIN_DIR/xploit*"
        else
            sudo rm -rf "$INSTALL_DIR"
            sudo rm "$BIN_DIR/xploit*"
        fi
    else
        echo "[✘] If you want to install you must remove previous installations [✘] ";
        echo "[✘] Installation failed! [✘] ";
        exit
    fi
fi
echo "[✔] Cleaning up old directories...";
if [ -d "$ETC_DIR/Phhitachi" ]; then
    echo "$DIR_FOUND_TEXT"
    if [ "$TERMUX" = true ]; then
        rm -rf "$ETC_DIR/Phhitachi"
    else
        sudo rm -rf "$ETC_DIR/Phhitachi"
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone --depth=1 https://github.com/PhHitachi/SecurityXploit "$INSTALL_DIR";
echo "#!$BASH_PATH
python $INSTALL_DIR/xploit.pl" '${1+"$@"}' > "$INSTALL_DIR/xploit";
chmod +x "$INSTALL_DIR/xploit";
if [ "$TERMUX" = true ]; then
    cp "$INSTALL_DIR/xploit" "$BIN_DIR"
    cp "$INSTALL_DIR/xploit.cfg" "$BIN_DIR"
else
    sudo cp "$INSTALL_DIR/xploit" "$BIN_DIR"
    sudo cp "$INSTALL_DIR/xploit.cfg" "$BIN_DIR"
fi
rm "$INSTALL_DIR/xploit";


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Tool installed successfully! [✔]";
    echo "";
else
    echo "[✘] Installation failed! [✘] ";
    exit
fi

