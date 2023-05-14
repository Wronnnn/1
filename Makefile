all: hello

hello: src/hello.o src/print.o
	gcc -o hello src/hello.o src/print.o

src/hello.o: src/hello.c include/print.h
	gcc -c src/hello.c -o src/hello.o

src/print.o: src/print.c include/print.h
	gcc -c src/print.c -o src/print.o
