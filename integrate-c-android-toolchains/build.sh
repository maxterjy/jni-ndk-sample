cd ./demo
root=$(pwd)

echo build native
cd ./app/native
./build_x86.sh

echo build apk
cd $root
./gradlew assemble
./gradlew installDebug
