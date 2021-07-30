
#include "mylib2.hpp"
#include "mylib1.hpp"

std::string mylib2TestFunction() {
	return "Hello from MyLibrary2 and "+mylib1TestFunction();
}

