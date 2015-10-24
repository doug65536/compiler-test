all: c3.5 g4.9 g4.8 g4.7 g4.6 wg64 wg32

clean:
	rm c3.5 g4.9 g4.8 g4.7 g4.6 wg64 wg32

.PHONY: all clean

c3.5: test.cpp
	clang++-3.5 -o c3.5 -std=c++11 -pthread -static test.cpp

g4.9: test.cpp
	g++-4.9 -o g4.9 -std=c++11 -pthread -static test.cpp

g4.8: test.cpp
	g++-4.8 -o g4.8 -std=c++11 -pthread -static test.cpp

g4.7: test.cpp
	g++-4.7 -o g4.7 -std=c++11 -pthread -static test.cpp

g4.6: test.cpp
	g++-4.6 -o g4.6 -std=c++0x -pthread -static test.cpp

wg64: test.cpp
	x86_64-w64-mingw32-g++ -o wg64 -std=c++0x -pthread -static test.cpp

wg32: test.cpp
	i686-w64-mingw32-g++ -o wg32 -std=c++0x -pthread -static test.cpp

