INCLUDES = -I ./include
FLAGS = -g

OBJECTS=./build/chip8memory.o ./build/chip8stack.o ./build/chip8keyboard.o ./build/chip8.o ./build/chip8screen.o

all: ${OBJECTS}
	gcc  $(flags) $(INCLUDES)   `sdl2-config --cflags --libs` ./src/main.c ${OBJECTS}  -o ./bin/main

./build/chip8memory.o: src/chip8memory.c
	gcc ${flags} $(INCLUDES) ./src/chip8memory.c -c -o ./build/chip8memory.o

./build/chip8stack.o: src/chip8stack.c
	gcc ${flags} $(INCLUDES) ./src/chip8stack.c -c -o ./build/chip8stack.o

./build/chip8keyboard.o: src/chip8keyboard.c
	gcc ${flags} $(INCLUDES) ./src/chip8keyboard.c -c -o ./build/chip8keyboard.o

./build/chip8.o: src/chip8.c
	gcc ${flags} $(INCLUDES) ./src/chip8.c -c -o ./build/chip8.o

./build/chip8screen.o: src/chip8screen.c
	gcc ${flags} $(INCLUDES) ./src/chip8screen.c -c -o ./build/chip8screen.o

clean:
	rm -r build/*
