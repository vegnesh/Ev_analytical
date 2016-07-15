
CXX = g++
EXEC = exec


all: mainprog


mainprog: evsol.o main.o
	$(CXX) evsol.o main.o -o $(EXEC)

evsol.o: evsol.h evsol.C
	$(CXX) -c evsol.C -o evsol.o

main.o: evsol.h main.C
	$(CXX) -c main.C -o main.o

clean:
	rm *.o exec



