#!/bin/sh

mkdir build-android

function prepare_cmake
{
	export PATH="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin":~/Library/Android/sdk/platform-tools:$PATH
	ANDROID_HOME=~/Library/Android/sdk
	cd build-android
	$ANDROID_HOME/cmake/3.18.1/bin/cmake \
		-DANDROID=1 \
		-DCMAKE_TOOLCHAIN_FILE=$ANDROID_HOME/ndk/21.4.7075529/build/cmake/android.toolchain.cmake \
		-DANDROID_SDK=$ANDROID_HOME \
		-DANDROID_ABI=arm64-v8a \
		-DANDROID_NATIVE_API_LEVEL=24 \
		-DANDROID_BUILD_TOOLS_VERSION=30.0.2 \
		-DANDROID_PACKAGE=com.example.mylib2testapp \
		-DCMAKE_BUILD_TYPE=Debug \
		..
}

function build_cmake
{
	export PATH="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin":~/Library/Android/sdk/platform-tools:$PATH
	ANDROID_HOME=~/Library/Android/sdk;
	$ANDROID_HOME/cmake/3.18.1/bin/cmake --build .
}

# (export PATH="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin":~/Library/Android/sdk/platform-tools:$PATH ANDROID_HOME=~/Library/Android/sdk; (adb install -r ../../build-android-export/lovr.apk))

prepare_cmake
build_cmake
