
#include <jni.h>

#include <mylib2.hpp>

extern "C" JNIEXPORT jstring JNICALL
Java_com_example_mylib2testapp_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    return env->NewStringUTF(mylib2TestFunction().c_str());
}