cd ./demo
root=$(pwd)

echo clean native
cd ./app/native
./clean.sh

echo clean apk
cd $root
./gradlew clean
