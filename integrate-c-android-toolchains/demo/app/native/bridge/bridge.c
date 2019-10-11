
#include <jni.h>
#include "util.h"

JNIEXPORT void JNICALL Java_maxter_demo_Bridge_nativePrintHello(JNIEnv *env, jobject obj) {
   printHello();
}



