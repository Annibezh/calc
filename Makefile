all: calc

calc: calculator.o main.o
	g++ calculator.o main.o -o calc

calculator.o: calculator.cpp
	g++ -c calculator.cpp

main.o: main.cpp
	g++ -c main.cpp

clean:
	rm -rf *.o calc
