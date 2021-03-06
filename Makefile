CC = g++
CFLAGS = -W -Wall -pedantic -ansi -g -O2
LIBS = -lSDL2 -lSDL2_image

SRC = ${wildcard *.cpp}
OBJ = ${SRC:.cpp=.o}

all:
	@make game

%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

game: $(OBJ)
	$(CC) -o $@ $(OBJ) $(LIBS)

clean:
	@rm -rf *.o

