make check
make
make check
make install
./configure --prefix=/usr
make
chown -R tester .
su tester -c "PATH=$PATH make check"
cd ..
tar -xf make-4.4.1.tar.gz 
cd make-4.4.1
./configure --prefix=/usr
make
chown -R tester .
su tester -c "PATH=$PATH make check"
make install
cd ..
tar -xf patch-2.7.6
tar -xf patch-2.7.6.tar.xz 
cd patch-2.7.6
./configure --prefix=/usr
make
make clean
make
make check
make install
cd //
cd /sources/
tar -xf tar-1.35.tar.xz 
ls
cd sources/
cd tar-1.35
FORCE_UNSAFE_CONFIGURE=1 ./configure --prefix=/usr
make
make check
cd ..
rm -rf tar-1.35
tar -xf tar-1.35.tar.xz 
cd tar-1.35
FORCE_UNSAFE_CONFIGURE=1 ./configure --prefix=/usr
make
make check
cd ..
rm -rf gcc-14.2.0/build*
cd tar-1.35
cd ..
rm -rf tar-1.35
tar -xf tar-1.35.tar.xz 
cd tar-1.35
FORCE_UNSAFE_CONFIGURE=1 ./configure --prefix=/usr
make
make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.35
cd ..
tar -xf texinfo-7.1.tar.xz 
cd texinfo-7.1
./configure --prefix=/usr
make
make check
make install
make TEXMF=/usr/share/texmf install-tex
pushd /usr/share/info
 rm -v dir
 for f in *;  do install-info $f dir 2>/dev/null;  done
popd
cd ..
tar -xf vim-9.1.0660.tar.gz 
cd vim-9.1.0660
echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
./configure --prefix=/usr
make
chown -R tester .
su tester -c "TERM=xterm-256color LANG=en_US.UTF-8 make -j1 test"  &> vim-test.log
cat vim-test.log 
make install
ln -sv vim /usr/bin/vi
for L in /usr/share/man/{,*/}man1/vim.1; do  ln -sv vim.1 $(dirname $L)/vi.1; done
ln -sv ../vim/vim91/doc /usr/share/doc/vim-9.1.0738
cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc
" Ensure defaults are set before customizing settings, not after
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1
set nocompatible
set backspace=2
set mouse=
syntax on
if (&term == "xterm") || (&term == "putty")
 set background=dark
endif
" End /etc/vimrc
EOF

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
cd ..
tar -xf MarkupSafe-2.1.5.tar.gz 
cd MarkupSafe-2.1.5
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist Markupsafe
cd ..
tar -xf jinja2-3.1.4.tar.gz 
cd jinja2-3.1.4
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist Jinja2
cd ..
tar -xf systemd-256.4.tar.gz 
cd systemd-256.4
sed -i -e 's/GROUP="render"/GROUP="video"/'  -e 's/GROUP="sgx", //' rules.d/50-udev-default.rules.in
sed '/NETWORK_DIRS/s/systemd/udev/' -i src/basic/path-lookup.h
sed '/systemd-sysctl/s/^/#/' -i rules.d/99-systemd.rules.in
mkdir -p build
cd build
meson setup ..  --prefix=/usr  --buildtype=release  -D mode=release  -D dev-kvm-mode=0660  -D link-udev-shared=false  -D logind=false  -D vconsole=false
export udev_helpers=$(grep "'name' :" ../src/udev/meson.build | \
 awk '{print $3}' | tr -d ",'" | grep -v 'udevadm')
ninja udevadm systemd-hwdb  $(ninja -n | grep -Eo '(src/(lib)?udev|rules.d|hwdb.d)/[^ ]*')  $(realpath libudev.so --relative-to .)  $udev_helpers
install -vm755 -d {/usr/lib,/etc}/udev/{hwdb.d,rules.d,network}
install -vm755 -d /usr/{lib,share}/pkgconfig
install -vm755 udevadm /usr/bin/
install -vm755 systemd-hwdb /usr/bin/udev-hwdb
ln -svfn ../bin/udevadm /usr/sbin/udevd
cp -av libudev.so{,*[0-9]} /usr/lib/
install -vm644 ../src/libudev/libudev.h /usr/include/
install -vm644 src/libudev/*.pc /usr/lib/pkgconfig/
install -vm644 src/udev/*.pc /usr/share/pkgconfig/
install -vm644 ../src/udev/udev.conf /etc/udev/
install -vm644 rules.d/* ../rules.d/README /usr/lib/udev/rules.d/
install -vm644 $(find ../rules.d/*.rules \
 -not -name '*power-switch*') /usr/lib/udev/rules.d/
install -vm644 hwdb.d/* ../hwdb.d/{*.hwdb,README} /usr/lib/udev/hwdb.d/
install -vm755 $udev_helpers /usr/lib/udev
install -vm644 ../network/99-default.link /usr/lib/udev/network
tar -xvf ../../udev-lfs-20230818.tar.xz
make -f udev-lfs-20230818/Makefile.lfs install
tar -xf ../../systemd-man-pages-256.5.tar.xz  --no-same-owner --strip-components=1  -C /usr/share/man --wildcards '*/udev*' '*/libudev*'  '*/systemd.link.5'  '*/systemd-'{hwdb,udevd.service}.unset udev_helpers8
sed 's|systemd/network|udev/network|'  /usr/share/man/man5/systemd.link.5  > /usr/share/man/man5/udev.link.5
sed 's/systemd\(\\\?-\)/udev\1/' /usr/share/man/man8/systemd-hwdb.8  > /usr/share/man/man8/udev-hwdb.8
sed 's|lib.*udevd|sbin/udevd|'  /usr/share/man/man8/systemd-udevd.service.8  > /usr/share/man/man8/udevd.8
rm /usr/share/man/man*/systemd*
tar -xf ../../systemd-man-pages-256.4.tar.xz  --no-same-owner --strip-components=1  -C /usr/share/man --wildcards '*/udev*' '*/libudev*'  '*/systemd.link.5'  '*/systemd-'{hwdb,udevd.service}.8
unset udev_helpers
udev-hwdb update
cd ../..
./configure --prefix=/usr  --docdir=/usr/share/doc/man-db-2.13.0  --sysconfdir=/etc  --disable-setuid  --enable-cache-owner=bin  --with-browser=/usr/bin/lynx  --with-vgrind=/usr/bin/vgrind  --with-grap=/usr/bin/grap  --with-systemdtmpfilesdir=  --with-systemdsystemunitdir=
cd man-db-2.12.1.tar.xz 
tar -xf man-db-2.12.1.tar.xz
cd man-db-2.12.1
./configure --prefix=/usr  --docdir=/usr/share/doc/man-db-2.13.0  --sysconfdir=/etc  --disable-setuid  --enable-cache-owner=bin  --with-browser=/usr/bin/lynx  --with-vgrind=/usr/bin/vgrind  --with-grap=/usr/bin/grap  --with-systemdtmpfilesdir=  --with-systemdsystemunitdir=
make
make check
make install
cd ..
tar -xf procps-ng-4.0.4.tar.xz 
cd procps-ng-4.0.4
./configure --prefix=/usr  --docdir=/usr/share/doc/procps-ng-4.0.4  --disable-static  --disable-kill
make
chown -R tester .
su tester -c "PATH=$PATH make check"
make install
cd ..
tar -xf util-linux-2.40.2
tar -xf util-linux-2.40.2.tar.xz 
cd util-linux-2.40.2
./configure --bindir=/usr/bin  --libdir=/usr/lib  --runstatedir=/run  --sbindir=/usr/sbin  --disable-chfn-chsh  --disable-login  --disable-nologin  --disable-su  --disable-setpriv  --disable-runuser  --disable-pylibmount  --disable-liblastlog2  --disable-static  --without-python  --without-systemd  --without-systemdsystemunitdir  ADJTIME_PATH=/var/lib/hwclock/adjtime  --docdir=/usr/share/doc/util-linux-2.40.2
make
bash tests/run.sh --srcdir=$PWD --builddir=$PWD
touch /etc/fstab
chown -R tester .
su tester -c "make -k check"
make install
cd ..
tar -xf e2fsprogs-1.47.1.tar.gz 
cd e2fsprogs-1.47.1
mkdir -v build
cd build
../configure --prefix=/usr  --sysconfdir=/etc  --enable-elf-shlibs  --disable-libblkid  --disable-libuuid  --disable-uuidd  --disable-fsck
make
make check
make clean
make
make check
make install
rm -fv /usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
gunzip -v /usr/share/info/libext2fs.info.gz
install-info --dir-file=/usr/share/info/dir /usr/share/info/libext2fs.info
makeinfo -o doc/com_err.info ../lib/et/com_err.texinfo
install -v -m644 doc/com_err.info /usr/share/info
install-info --dir-file=/usr/share/info/dir /usr/share/info/com_err.info
sed 's/metadata_csum_seed,//' -i /etc/mke2fs.conf
cd ..
cd ..
tar -xf sysklogd-2.6.1.tar.gz 
cd sysklogd-2.6.1
./configure --prefix=/usr  --sysconfdir=/etc  --runstatedir=/run  --without-logger
make
make install
cat > /etc/syslog.conf << "EOF"
# Begin /etc/syslog.conf
auth,authpriv.* -/var/log/auth.log
*.*;auth,authpriv.none -/var/log/sys.log
daemon.* -/var/log/daemon.log
kern.* -/var/log/kern.log
mail.* -/var/log/mail.log
user.* -/var/log/user.log
*.emerg *
# Do not open any internet ports.
secure_mode 2
# End /etc/syslog.conf
EOF

cd ..
tar -xf sysvinit-3.10
tar -xf sysvinit-3.10.tar.xz 
cd sysvinit-3.10
patch -Np1 -i ../sysvinit-3.10-consolidated-1.patch
make
make install
cd ..
save_usrlib="$(cd /usr/lib; ls ld-linux*[^g])
 libc.so.6
 libthread_db.so.1
 libquadmath.so.0.0.0
 libstdc++.so.6.0.33
 libitm.so.1.0.0
 libatomic.so.1.2.0"
cd /usr/lib
for LIB in $save_usrlib; do  objcopy --only-keep-debug --compress-debug-sections=zlib $LIB $LIB.dbg;  cp $LIB /tmp/$LIB;  strip --strip-unneeded /tmp/$LIB;  objcopy --add-gnu-debuglink=$LIB.dbg /tmp/$LIB;  install -vm755 /tmp/$LIB /usr/lib;  rm /tmp/$LIB; done
online_usrbin="bash find strip"
online_usrlib="libbfd-2.43.1.so
 libsframe.so.1.0.0
 libhistory.so.8.2
 libncursesw.so.6.5
 libm.so.6
 libreadline.so.8.2
 libz.so.1.3.1
 libzstd.so.1.5.6
 $(cd /usr/lib; find libnss*.so* -type f)"
for BIN in $online_usrbin; do  cp /usr/bin/$BIN /tmp/$BIN;  strip --strip-unneeded /tmp/$BIN;  install -vm755 /tmp/$BIN /usr/bin;  rm /tmp/$BIN; done
for LIB in $online_usrlib; do  cp /usr/lib/$LIB /tmp/$LIB;  strip --strip-unneeded /tmp/$LIB;  install -vm755 /tmp/$LIB /usr/lib;  rm /tmp/$LIB; done
for i in $(find /usr/lib -type f -name \*.so* ! -name \*dbg)  $(find /usr/lib -type f -name \*.a)  $(find /usr/{bin,sbin,libexec} -type f); do  case "$online_usrbin $online_usrlib $save_usrlib" in  *$(basename $i)* )  ;;  * ) strip --strip-unneeded $i;  ;;  esac; done
unset BIN LIB save_usrlib online_usrbin online_usrlib
rm -rf /tmp/{*,.*}
find /usr/lib /usr/libexec -name \*.la -delete
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf
userdel -r tester
cd /
cd sources/
tar -xf lfs-bootscripts-20240825.tar.xz 
cd lfs-bootscripts-20240825
make install
exit
ip link
cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf
domain <Your Domain Name>
nameserver <IP address of your primary nameserver>
nameserver <IP address of your secondary nameserver>
# End /etc/resolv.conf
EOF

vim /etc/resolv.conf 
echo "<lfs>" > /etc/hostname
neofetch
cat > /etc/inittab << "EOF"
# Begin /etc/inittab
id:3:initdefault:
si::sysinit:/etc/rc.d/init.d/rc S
l0:0:wait:/etc/rc.d/init.d/rc 0
l1:S1:wait:/etc/rc.d/init.d/rc 1
l2:2:wait:/etc/rc.d/init.d/rc 2
l3:3:wait:/etc/rc.d/init.d/rc 3
l4:4:wait:/etc/rc.d/init.d/rc 4
l5:5:wait:/etc/rc.d/init.d/rc 5
l6:6:wait:/etc/rc.d/init.d/rc 6
ca:12345:ctrlaltdel:/sbin/shutdown -t1 -a -r now
su:S06:once:/sbin/sulogin
s1:1:respawn:/sbin/sulogin
1:2345:respawn:/sbin/agetty --noclear tty1 9600
2:2345:respawn:/sbin/agetty tty2 9600
3:2345:respawn:/sbin/agetty tty3 9600
4:2345:respawn:/sbin/agetty tty4 9600
5:2345:respawn:/sbin/agetty tty5 9600
6:2345:respawn:/sbin/agetty tty6 9600
# End /etc/inittab
EOF

cat > /etc/sysconfig/console << "EOF"
# Begin /etc/sysconfig/console
UNICODE="1"
FONT="Lat2-Terminus16"
# End /etc/sysconfig/console
EOF

vim /etc/sysconfig/rc.site 
touch fastboot
vim /etc/sysconfig/rc.site 
cat > /etc/profile << "EOF"
# Begin /etc/profile
for i in $(locale); do
 unset ${i%=*}
done
export LANG=C.UTF-8
# End /etc/profile
EOF

cat > /etc/inputrc << "EOF"
# Begin /etc/inputrc
# Modified by Chris Lynn <roryo@roryo.dynup.net>
# Allow the command prompt to wrap to the next line
set horizontal-scroll-mode Off
# Enable 8-bit input
set meta-flag On
set input-meta On
# Turns off 8th bit stripping
set convert-meta Off
# Keep the 8th bit for display
set output-meta On
# none, visible or audible
set bell-style none
# All of the following map the escape sequence of the value
# contained in the 1st argument to the readline specific functions
"\eOd": backward-word
"\eOc": forward-word
# for linux console
"\e[1~": beginning-of-line
"\e[4~": end-of-line
"\e[5~": beginning-of-history
"\e[6~": end-of-history
"\e[3~": delete-char
"\e[2~": quoted-insert
# for xterm
"\eOH": beginning-of-line
"\eOF": end-of-line
# for Konsole
"\e[H": beginning-of-line
"\e[F": end-of-line
# End /etc/inputrc
EOF

cat > /etc/shells << "EOF"
# Begin /etc/shells
/bin/sh
/bin/bash
# End /etc/shells
EOF

cat > /etc/fstab << "EOF"
# Begin /etc/fstab
# file system mount-point type options dump fsck
# order
/dev/<xxx> / <fff> defaults 1 1
/dev/<yyy> swap swap pri=1 0 0
proc /proc proc nosuid,noexec,nodev 0 0
sysfs /sys sysfs nosuid,noexec,nodev 0 0
devpts /dev/pts devpts gid=5,mode=620 0 0
tmpfs /run tmpfs defaults 0 0
devtmpfs /dev devtmpfs mode=0755,nosuid 0 0
tmpfs /dev/shm tmpfs nosuid,nodev 0 0
cgroup2 /sys/fs/cgroup cgroup2 nosuid,noexec,nodev 0 0
# End /etc/fstab
EOF

lsblk
vim /etc/fstab
exit
cd sources/
tar -xf linux-6.10.5
cd linux-6.10.5
make mrproper
make menuconfig
make defconfig
make menuconfig
make
vim /etc/fstab 
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-6.11.1-lfs-r12.2-19
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-6.10.5-lfs-r12.2-19
rm /boot/vmlinuz-6.11.1-lfs-r12.2-19 
cp -iv System.map /boot/System.map-6.10.5
cp -iv .config /boot/config-6.10.5
cp -r Documentation -T /usr/share/doc/linux-6.10.5
cd ..
chown -R 0:0 linux-6.10.5
cd linux-6.10.5
make modules_install
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-6.10.5-lfs-r12.2-19
cp -iv System.map /boot/System.map-6.10.5
install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf
install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true
# End /et

echo r12.2-19 > /etc/lfs-release
cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Linux From Scratch"
DISTRIB_RELEASE="r12.2-19"
DISTRIB_CODENAME="Nasion Golloshi"
DISTRIB_DESCRIPTION="Linux From Scratch"
EOF

cat > /etc/os-release << "EOF"
NAME="Linux From Scratch"
VERSION="r12.2-19"
ID=lfs
PRETTY_NAME="Linux From Scratch r12.2-19"
VERSION_CODENAME="<your name here>"
HOME_URL="https://w
vim /etc/os-release 
cd ../grub-2.12
unset {C,CPP,CXX,LD}FLAGS
echo depends bli part_gpt > grub-core/extra_deps.lst
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
ls
mkdir -pv /usr/share/fonts/unifont && gunzip -c ../unifont-16.0.01.pcf.gz > /usr/share/fonts/unifont/unifont.pcf
cd ..
wget  https://downloads.sourceforge.net/freetype/freetype-2.13.3.tar.xz
cd grub-2.12
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
cd grub-mkfont
lsa
ls
gunzip -c ../unifont-16.0.01.pcf.gz > /usr/share/fonts/unifont/unifont.pcf
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
cd ..
cd freetype-2.13.3
ls
make install
cd ..
cd grub-2.12
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
ls /usr/local/lib/
cd ../freetype-2.13.3
ls
cat README
cat docs/INSTALL
clear
cat docs/INSTALL.UNIX 
./configure --prefix=/usr
python3 -m pip install docwriter
make
make install
cd ..
cd grub-2.12
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
vim util/grub-mkfont.c 
ls util
cd ..
efibootmgr
tar -xf efibootmgr-17.tar.gz 
cd efibootmgr-17
sed -e '/extern int efi_set_verbose/d' -i src/efibootmgr.c
make EFIDIR=LFS EFI_LOADER=grubx64.efi
cd ..
tar -xf efivar-37.tar.bz2 
cd efivar-37
patch -Np1 -i ../efivar-37-gcc_9-1.patch
make CFLAGS="-O2 -Wno-stringop-truncation"
ls -la
cd ..
ls -la
chown -R 0:0 efivar-37
cd efivar-37
patch -Np1 -i ../efivar-37-gcc_9-1.patch
make CFLAGS="-O2 -Wno-stringop-truncation"
cd ..
cd grub-2.12
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
ls /usr/lib/
ls /usr/include/freetype2/
vim util/grub-mkfont.c 
vim util/grub-mkfont.c 
cp /usr/include/freetype2/ft2build.h .
cp ft2build.h util/
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
ls /usr/include/freetype2/
find /usr -name "libfreetype*"
LDFLAGS="-L/usr/lib/" ./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
cd ..
rm -rf grub-2.12
tar -xf grub-2.12.tar.xz 
cd grub-2.12
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror     && unset TARGET_CC && make
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64
ls
cat config.log 
cat config.log | grep FREETYPE
cd /sources/
ls
cd grub-2.12
ls
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                            --with-platform=efi              --target=x86_64   --disable-werror
unset TARGET_CC && make
make
./configure --prefix=/usr                    --sysconfdir=/etc                --disable-efiemu                 --enable-grub-mkfont             --with-platform=efi              --target=x86_64                  --disable-werror
cd /tmp
grub-mkrescue --output=grub-img.iso
xorriso -as cdrecord -v dev=/dev/cdrw blank=as_needed grub-img.iso
exit
