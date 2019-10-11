cd ./demo
./gradlew assemble
./gradlew installDebug

adb shell am start -n maxter.demo/.MainActivity

echo ---------
echo
echo press 'Ctrl + C' to exit logcat
echo 
echo ---------
echo 
adb logcat | grep 'jnilog'