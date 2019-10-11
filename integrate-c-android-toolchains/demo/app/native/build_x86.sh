
#build static library: libUtil
CC=/home/invi/env/android/ndk/android-ndk-r11c/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-gcc
AR=/home/invi/env/android/ndk/android-ndk-r11c/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-ar
SYSROOT=/home/invi/env/android/ndk/android-ndk-r11c/platforms/android-24/arch-x86
INCS=-I/home/invi/env/android/ndk/android-ndk-r11c/platforms/android-24/arch-x86/usr/include/android

#create libLegacy
cd ./legacy
$CC -c util.c -o util.o --sysroot=$SYSROOT $INCS -llog
$AR rcs libLegacy.a util.o 

#build dynamic library: libBridge
cd ../bridge
$CC -c bridge.c -o bridge.o --sysroot=$SYSROOT -I./native $INCS 
$CC -shared bridge.o ../legacy/libLegacy.a -o libBridge.so --sysroot=$SYSROOT -llog

#copy library to x86 folder
if [ ! -d x86 ]; then
    mkdir x86
fi
cp libBridge.so ./x86