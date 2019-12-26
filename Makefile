SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
CFLAGS = -g -Wall
LDFLAGS = -lncurses

rogue: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(OBJ) rogue