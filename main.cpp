#include <iostream>
#include <string>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <unistd.h>
#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <array>

std::string exec(const char* cmd) {
	std::array<char, 128> buffer;
	std::string result;
	std::shared_ptr<FILE> pipe(popen(cmd, "r"), pclose);
	if (!pipe) throw std::runtime_error("popen() failed!");
	while (!feof(pipe.get())) {
		if (fgets(buffer.data(), 128, pipe.get()) != nullptr)
			result += buffer.data();
	}
	return result;
}

const std::string currentDateTime(const char* wot) {
	time_t     now = time(0);
	struct tm  tstruct;
	char       buf[80];
	tstruct = *localtime(&now);
	strftime(buf, sizeof(buf), wot, &tstruct);

	return buf;
}

const int amount = 2;
const char* tokill[amount] = {"pkill -f discord", "pkill  -f steam"};


int main(){


	//TODO: that it automatically stops and you cant stop it earlier

	int h;
	int m;
	int s;

	std::cout << "How long from now to stop?" << std::endl;
	std::cout << "Hours: ";
	std::cin >> h;
	std::cout << "Minutes: ";
	std::cin >> m;
	std::cout << "Seconds: ";
	std::cin >> s;

	int time[3] = {std::stoi(currentDateTime("%H")), std::stoi(currentDateTime("%M")), std::stoi(currentDateTime("%S"))};
	std::cout << time[0] << std::endl;
	std::cout << time[1] << std::endl;
	std::cout << time[2] << std::endl;

	while(std::stoi(currentDateTime("%H")) < (time[0] + h)){
		sleep(1);
		for(int x = 0; x < amount; x++) {
			exec(tokill[x]);
		}
	}
	while(std::stoi(currentDateTime("%M")) < (time[1] + m)){
		sleep(1);
		for(int x = 0; x < amount; x++) {
			exec(tokill[x]);
		}
	}
	while(std::stoi(currentDateTime("%S")) < (time[2] + s)){
		sleep(1);
		for(int x = 0; x < amount; x++) {
			exec(tokill[x]);
		}
	}

	return 0;
}

