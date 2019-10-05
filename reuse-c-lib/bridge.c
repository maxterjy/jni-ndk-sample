
#include <jni.h>
#include "util.h"

JNIEXPORT void JNICALL Java_Demo_nativePrintHello(JNIEnv *env, jobject obj) {
   
   printHello();

}



