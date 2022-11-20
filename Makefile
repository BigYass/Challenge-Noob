CC=gcc
CFLAGS=-Wall
SRC=src/
BIN=bin/
EXEC=main
 
all: $(EXEC)

main: $(SRC)main.c $(SRC)main.o
	$(CC) $(SRC)*.o $(CFLAGS) -o $(BIN)$@
	strip -gsMX $(BIN)*
 
$(SRC)%.o : $(SRC)%.c
	$(CC) -o $@ -c $^ $(CFLAGS)
 
clean:
	rm -rf $(SRC)*.o
	rm -rf $(BIN)*

run:
	$(BIN)main.exe