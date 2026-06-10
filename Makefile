.PHONY: run clean

CXX = g++
CXXFLAGS = -std=c++17 -Wall -I.tgelib/include
LDFLAGS = -L.tgelib/lib -ltge -Wl,-rpath,'$$ORIGIN/.tgelib/lib' -pthread
TARGET = game

SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)

run: $(TARGET)
	./$(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET) $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)
