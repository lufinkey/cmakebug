
#include <jni.h>
#include <mylib1.hpp>

extern "C" JNIEXPORT jstring JNICALL
Java_com_example_mylib1testapp_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    return env->NewStringUTF(mylib1TestFunction().c_str());
}