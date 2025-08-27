CXX=clang++
CXXFLAGS=-std=c++20

temp: temp.cpp
	$(CXX) -o temp $(CXXFLAGS) temp.cpp

test: temp temp.txt
	./temp < temp.txt

.PHONY: test