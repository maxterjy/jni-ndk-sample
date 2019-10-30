gcc -c JNIBridge.c -o JNIBridge.o -I$JAVA_HOME/include -I$JAVA_HOME/include/linux
gcc -shared JNIBridge.o -o libJNIBridge.so


javac Adder.java
javac Demo.java
java -Djava.library.path=. Demo 