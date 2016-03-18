CC ?= gcc
CFLAGS_common ?= -Wall -std=gun99
CFLAGS_orig = -O0
CFLAGS_opt  = -O0

EXEC = client server

sll: $(EXEC)

client: client.o
	$(CC) -o $@ $@.o

server: server.o
	$(CC) -o $@ $@.o

.PHONY: clean
clean:
	$(RM) $(EXEC) *.o 
