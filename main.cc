#include <iostream>
#include <chrono>
#include <thread>


int main (int argc, char **argv){
	std::cout << "Simple test version 2" << std::endl;
	while (true){
		std::this_thread::sleep_for(std::chrono::milliseconds(100));
	}
	return 0;
}
