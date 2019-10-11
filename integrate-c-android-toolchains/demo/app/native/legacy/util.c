#include <jni.h>
#include <log.h>

void printHello(){
   __android_log_print(ANDROID_LOG_INFO, "jnilog", "hello from c");
}
