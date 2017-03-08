all: projekt

debug: CXXFLAGS += -DDEBUG -g
debug: projekt

projekt: projekt.o
	g++ $(CXXFLAGS) -o projekt projekt.o

projekt.o: projekt.cpp
	g++ $(CXXFLAGS) -c projekt.cpp
