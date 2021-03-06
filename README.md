# Android Cmake Bug

When linking a dependent cmake module from outside the project, the library is either unable to link (`libMyLibrary1.so not found`) or the symbols are just not found (`undefined reference to mylib1TestFunction()`).

This is an example project that shows this bug. Just open `projects/android-studio` in android studio and attempt to build the project

The dependency structure for this project is **TestApp** => **MyLibrary2** => **MyLibrary1**

I suspect the issue is somehow related to the fact that the projects aren't nested under a single `CMakeLists.txt`. However, given how I want to lay out my project, I'd prefer to not have a `CMakeLists.txt` file in the root.

The `CMakeLists.txt` files:
  - [TestApp](projects/android-studio/app/src/main/cpp/CMakeLists.txt)
  - [MyLibrary1](external/MyLibrary1/projects/android-studio/libMyLibrary1/src/main/cpp/CMakeLists.txt)
  - [MyLibrary2](projects/android-studio/libMyLibrary2/src/main/cpp/CMakeLists.txt)
