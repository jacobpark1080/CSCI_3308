studs : Student.o Driver.o
	g++ -o studs Student.o Driver.o
Student.o : Student.cpp Student.h
	g++ -Wall -c Student.cpp
Driver.o : Driver.cpp
	g++ -Wall -c Driver.cpp
clean:
	$(RM) core studs Student.o Driver.o
