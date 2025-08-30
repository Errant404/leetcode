CXX=clang++
CXXFLAGS=-std=c++20 -fsanitize=address,undefined,leak -g -O1

temp: temp.cpp
	$(CXX) -o temp $(CXXFLAGS) temp.cpp 2>&1 | tee temp.log

test: temp temp.txt
	./temp < temp.txt

.PHONY: test