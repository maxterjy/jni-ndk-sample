
#build static library: libUtil
gcc -c util.c -o util.o
ar rcs libUtil.a util.o

#build dynamic library: libBridge
gcc -c bridge.c -o bridge.o -I$JAVA_HOME/include -I$JAVA_HOME/include/linux
gcc -shared bridge.o libUtil.a -o libBridge.so

#complie and run Java
javac Demo.java
java -Djava.library.path=. Demo
