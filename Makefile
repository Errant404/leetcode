CXX=clang++
CXXFLAGS=-std=c++20 -g -O1 -fsanitize=undefined,address,leak

temp: temp.cpp parser.hpp Makefile
	$(CXX) -o temp $(CXXFLAGS) temp.cpp 2>&1 | tee temp.log

test: temp temp.txt
	./temp < temp.txt

.PHONY: test