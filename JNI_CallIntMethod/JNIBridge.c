#include <jni.h>
#include <stdio.h>

//use command
//javah -jni Demo
//to generate jni method declaration
JNIEXPORT void JNICALL Java_Demo_nativeEntry(JNIEnv *env, jobject thiz) {
    //thiz is the calling object
    //in java main(), we call: demo.nativeEntry()
    //so, thiz is demo object

    //get class Demo
    jclass demoCls = (*env)->FindClass(env, "LDemo;");
    //get id of mAdder in Demo
    jfieldID adderField = (*env)->GetFieldID(env, demoCls, "mAdder", "LAdder;"); 

    //get object mAdder from object demo
    jobject adderObject = (*env)->GetObjectField(env, thiz, adderField); 

    //get class Adder
    jclass adderCls = (*env)->FindClass(env, "LAdder;"); 
    //get id of method add in Adder
    jmethodID addMethod = (*env)->GetMethodID(env, adderCls, "add", "(II)I"); 
    // (II)I: is signature of method Adder.add()
    // use command: 
    //javap -s -p Adder
    //to get method signature

    //call method add of object mAdder
    jint sum = (*env)->CallIntMethod(env, adderObject, addMethod, 10, 20); 
    //sum = add(10,20)

    printf("sum = %d\n", sum);
}
