# Android Cmake Bug

When linking a dependent cmake module from outside the project, the library is either unable to link (libMyLibrary1.so not found) or the symbols are just not found (undefined reference to mylib1TestFunction()).

This is an example project that shows this bug. Just open projects/android-studio in android studio and attempt to build the project

The dependency structure for this project is *TestApp* => *MyLibrary2* => *MyLibrary1*
