## Created by Anjuta

CC = gcc
CFLAGS = -g -I .
#OBJECTS = 
#INCFLAGS = 
#LDFLAGS = -Wl,-rpath,/usr/local/lib
LIBS = -lncurses -lpthread

server: server.o client.o
	$(CC) server.o -o server $(LIBS)
	$(CC) client.o -o client $(LIBS)

server.o: 
	$(CC) -c  $(CFLAGS) server.c
	
client.o: 
	$(CC) -c $(CFLAGS) client.c

.SUFFIXES:
.SUFFIXES:	.c .cc .C .cpp .o

.c.o :
	$(CC) -o $@ -c $(CFLAGS) $< $(INCFLAGS)

count:
	wc *.c *.cc *.C *.cpp *.h *.hpp

clean:
	rm -f *.o
	rm -f server client

install:
	cp ./server /usr/bin
	cp ./client /usr/bin
	
remove:
	rm -f /usr/bin/server
	rm -f /usr/bin/client

.PHONY: all
.PHONY: count
.PHONY: clean
