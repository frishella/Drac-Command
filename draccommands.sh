#!/usr/bin/env 

################################################################
#             Dracos packet commands                           #
#     Coded By eLCrush [-Rifqi Hidayatulloh-]                  #
#       Contact: elcrush@dracos-linux.org                      #
#           Thanks For Development Team                        #
################################################################


# Color
c0="$(tput setaf 0)"	# black
c1="$(tput setaf 1)"	# red
c2="$(tput setaf 2)"	# green
c3="$(tput setaf 3)"	# yellow
c4="$(tput setaf 4)"	# blue
c5="$(tput setaf 5)"	# magenta
c6="$(tput setaf 6)"	# cyan
c7="$(tput setaf 7)"	# white
rc="$(tput sgr0)"		# reset

#untuk warna
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

#cek user root
if [[ $EUID -ne 0 ]]; then
	echo "Warning!!! run this script with root user!"
	exit 1
fi

resize -s 50 84 > /dev/null

clear
echo -e $red ""
echo "               80G08        "
echo "                  8G#G@8  "
echo "                    8##0  "
echo "                     0##G8    "
echo "                       ####08 "
echo "                        8#####8   "
echo "                          G#####8   "
echo "                           8G#####8   "
echo "        #8#########0         #######8   "
echo "            8#######0          0#88#####    "
echo "              8G####8         8 8#8@@8###   "
echo "                 8###        G8   8@G######   "
echo "                  8##88       8     8######8    "
echo "                    G##088          80G##G080   "
echo "                      88000000008880#      000    "
echo "                            9               0 "
echo ""
echo -e $white" ==========================================="
echo -e $cyan"  Drac0s Linux Packet Commands"
echo -e $cyan"  Author: eLCrush [-Rifqi Hidayatulloh-]"
echo -e $cyan"  Visit: Dracos-linux.org"
echo -e $white" ==========================================="
if [ $(id -u) != "0" ]; then

      echo [!]::[Check Dependencies] ;
      sleep 2
      echo [✔]::[Check User]: $USER ;
      sleep 1
      echo [x]::[not root]: you need to be [root] to run this script.;
      echo ""
   	  sleep 1
	  exit


else

   echo [!]::[Check Dependencies]: ;
   sleep 1
   echo [✔]::[Check User]: $USER ;

fi

again='y'
while  [ $again == 'y' ] || [ $again == 'Y' ];
	do

###################################
#           Banner                #
###################################
clear
echo -e $red ""
echo "               80G08        "
echo "                  8G#G@8  "
echo "                    8##0  "
echo "                     0##G8    "
echo "                       ####08 "
echo "                        8#####8   "
echo "                          G#####8   "
echo "                           8G#####8   "
echo "        #8#########0         #######8   "
echo "            8#######0          0#88#####    "
echo "              8G####8         8 8#8@@8###   "
echo "                 8###        G8   8@G######   "
echo "                  8##88       8     8######8    "
echo "                    G##088          80G##G080   "
echo "                      88000000008880#      000    "
echo "                            9               0 "
echo ""
echo -e $white" ==========================================="
echo -e $cyan"  Drac0s Linux Packet Commands"
echo -e $cyan"  Author: eLCrush [-Rifqi Hidayatulloh-]"
echo -e $cyan"  Contact: elcrush@dracos-linux.org"
echo -e $cyan"  Visit: Dracos-linux.org"
echo -e $cyan"  Thanks: Blackcat"
echo -e $white" ==========================================="
echo -e $red"   Main Menu : "
echo
echo -e $white	"$okegreen	1) $red Firefox $white Portable $cyan 64bit"
echo -e $white	"$okegreen	2) $red Firefox $white Portable $cyan 32bit"
echo -e $white	"$okegreen 	3) $red Libgtk-3.so.0 $white Fix"
echo -e $white  "$okegreen       4) $red Xterm $white Installer"
echo -e $white  "$okegreen       5) $red CONNECT TO WIFI WPA2-PSK $white (CREATE NEW CONF)"
echo -e $white  "$okegreen       6) $red CONNECT TO WIFI WPA2-PSK $white (LOAD OLD CONF)"
echo -e $white  "$okegreen       7) $red CONNECT TO WIFI WPA2-PSK $white (LOAD OLD CONF)"
echo -e $white  "$okegreen       8) $red Firefox $white Installer"
echo -e $white  "$okegreen       9) $red Exit "
echo ""
echo -n -e $cyan"root"$white"@"$red"Dracos $white:  ";tput sgr0 
read pilihan
if test $pilihan == '1'
	then
    wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-x86_64/en-US/firefox-49.0.tar.bz2
    tar -xvf firefox*.tar.bz2
    cd firefox && ./firefox
    mv firefox /opt
    sudo ln -s /opt/firefox/firefox /usr/bin/firefox
    firefox
    echo "Firefox Portable 64bit Done ✔ "

elif test $pilihan == '2'
	then
	wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-i686/en-US/firefox-49.0.tar.bz2
    tar -xvf firefox*.tar.bz2
    cd firefox && ./firefox
    mv firefox /opt
    sudo ln -s /opt/firefox/firefox /usr/bin/firefox
    firefox
    echo "Firefox Portable 32bit Done ✔ "

elif test $pilihan == '3'
	then
	wget -c ftp://ftp.gnome.org/pub/gnome/sources/gtk+/3.18/gtk+-3.18.7.tar.xz
	tar -xf gtk+-3.18.7.tar.xz
    cd gtk+-3.18.7
    ./configure --prefix=/usr --sysconfdir=/etc --enable-broadway-backend --enable-x11-backend --disable-wayland-backend make && make install
    echo "Fix Libgtk-3 Done ✔ "
elif test $pilihan == '4'
	then
    wget ftp://invisible-island.net/xterm/xterm-327.tgz
    sed -i '/v0/{n;s/new:/new:kb=^?:/}' termcap &&
    printf '\tkbs=\\177,\n' >> terminfo &&

    TERMINFO=/usr/share/terminfo \
    ./configure $XORG_CONFIG     \
    --with-app-defaults=/etc/X11/app-defaults &&

    make
    make install &&
    make install-ti
    echo "Success Install Xterm ✔ "

elif test $pilihan == '5'
	then
    echo "Create new directory for save configuration"
	read $name
	mkdir /etc/$name 
	iwconfig
	echo
	echo $c4"What your wireless interface?"$rc
	read interface
	echo
	ifconfig $interface up
	iwlist $interface scan | grep "ESSID"
	echo $c4"What your ESSID?"$rc
	read essid
	iwconfig $interface ESSID "$essid"
	echo
	echo $c4"Enter your ESSID password:"$rc
	stty -echo
	read pass
	stty echo
	echo $c4"Enter your *.conf name:"$rc
	read conf
	wpa_passphrase "$essid" $pass > /etc/wpa/$conf.conf
	wpa_supplicant -Dwext -i$interface -c /etc/wpa/$conf.conf -B
	dhclient $interface
	echo
	echo "Test your connection!"
	ping -c3 google.com

elif test $pilihan == '6'
	then
	iwconfig
    echo
    echo $c4"What your wireless interface?"$rc
    read interface
    echo
    ifconfig $interface up
    echo $c4"What your ESSID?"$rc
    read essid
    iwconfig $interface ESSID "$essid"
    echo
    wpa_supplicant -Dwext -i$interface -c /etc/wpa/$conf.conf -B
    dhclient $interface
    echo
    echo "Test your connection!"
	ping -c3 google.com

elif test $pilihan == '7'
	then
	iwconfig
    echo
    echo $c4"What your wireless interface?"$rc
    read interface
    echo "Check your interface active or nonactive"
	ifconfig
	echo
    ifconfig $interface up
    iwlist $interface scan | grep "ESSID"
    echo $c4"What your ESSID?"$rc
    read essid
    iwconfig $interface ESSID "$essid"
    echo
    dhclient $interface
    echo
	echo "Test your connection!"
	ping -c3 google.com

elif test $pilihan == '8'
	then
    # install nspr
wget https://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v4.13.1/src/nspr-4.13.1.tar.gz
cd nspr-4.13.1/nspr
sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in && sed -i 's#$(LIBRARY) ##' config/rules.mk && ./configure --prefix=/usr --with-mozilla --with-pthreads $([ $(uname -m) = x86_64 ] && echo --enable-64bit) && make && make install
cd ../../

# install nss
wget https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_27_1_RTM/src/nss-3.27.1.tar.gz
tar xvf nss-3.27.1.tar.gz
cd nss-3.27.1
patch -Np1 -i nss-3.27.1-standalone-1.patch
cd nss
make -j1 BUILD_OPT=1 NSPR_INCLUDE_DIR=/usr/include/nspr/ USE_SYSTEM_ZLIB=1 ZLIB_LIBS=-lz  $([ $(uname -m) = x86_64 ] && echo USE_64=1) $([ -f /usr/include/sqlite3.h ] && echo NSS_USE_SYSTEM_SQLITE=1)
install -v -m755 Linux*/lib/*.so /usr/lib
install -v -m644 Linux*/lib/{*.chk,libcrmf.a} /usr/lib
install -v -m755 -d /usr/include/nss
cp -v -RL {public,private}/nss/* /usr/include/nss
chmod -v 644 /usr/include/nss/*
install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin/
install -v -m644 Linux*/lib/pkgconfig/nss.pc /usr/lib/pkgconfig
cd ../../

# install libvpx
wget http://storage.googleapis.com/downloads.webmproject.org/releases/webm/libvpx-1.6.0.tar.bz2
tar xvf libvpx-1.6.0.tar.bzip.bz2
cd libvpx-1.6.0
sed -i 's/cp -p/cp/' build/make/Makefile
mkdir libvpx-build && cd libvpx-build
../configure --prefix=/usr/ --enable-shared --disable-static
make && make install
cd ../../

# upgrade sqlite
wget http://sqlite.org/2016/sqlite-autoconf-3150000.tar.gz
tar xvf sqlite-autoconf-3150000.tar.gz
cd sqlite-autoconf-3150000
./configure --prefix=/usr --disable-static CFLAGS="-g -O2 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_ENABLE_UNLOCK_NOTIFY=1 -DSQLITE_SECURE_DELETE=1 -DSQLITE_ENABLE_DBSTAT_VTAB=1"
make && make install
cd ../

# install firefox
wget https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/49.0.1/source/firefox-49.0.1.source.tar.xz
tar xvf firefox-49.0.1.source.tar.xz
cd firefox-49.0.1
cat > mozconfig << "EOF"
ac_add_options --disable-dbus
ac_add_options --disable-necko-wifi
ac_add_options --enable-default-toolkit=cairo-gtk2
ac_add_options --disable-gconf
ac_add_options --enable-system-sqlite
ac_add_options --with-system-libevent
ac_add_options --with-system-libvpx
ac_add_options --with-system-nspr
ac_add_options --with-system-nss
ac_add_options --with-system-icu
ac_add_options --prefix=/usr
ac_add_options --enable-application=browser
ac_add_options --disable-crashreporter
ac_add_options --disable-updater
ac_add_options --disable-tests
ac_add_options --enable-optimize
ac_add_options --enable-gio
ac_add_options --enable-official-branding
ac_add_options --enable-safe-browsing
ac_add_options --enable-url-classifier
ac_add_options --enable-system-ffi
ac_add_options --enable-system-pixman
ac_add_options --with-pthreads
ac_add_options --with-system-bz2
ac_add_options --with-system-jpeg
ac_add_options --with-system-png
ac_add_options --with-system-zlib 
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/firefox-build-dir
EOF
SHELL=/bin/bash
export CFLAGS_HOLD=$CFLAGS
export CXXFLAGS_HOLD=$CXXFLAGS
export CFLAGS+=" -fno-delete-null-pointer-checks -fno-lifetime-dse -fno-schedule-insns2"
export CXXFLAGS+=" -fno-delete-null-pointer-checks -fno-lifetime-dse -fno-schedule-insns2"
make -f client.mk
make -f client.mk install INSTALL_SDK=
chown -R 0:0 /usr/lib/firefox-49.0.1
mkdir -pv  /usr/lib/mozilla/plugins
ln -sfv ../../mozilla/plugins /usr/lib/firefox-49.0.1/browser
echo "Success install firefox on your system"

elif test $pilihan == '9'
	then
	exit
fi

echo
echo -e -n "Back to Menu? (y/n) :";
read again;

    while  [ $again != 'y' ] && [ $again != 'Y' ] && [ $again != 'n' ] && [ $again != 'N' ];
    do
       echo -n "Back to menu (y/n) :";
       read again;
    done
done