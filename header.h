#include <stdio.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <signal.h>
#include <ncurses.h>
#include <curses.h>
#include <pthread.h>

#define MAXLINE 4096
#define NAMELEN 50

#define WELCOME_MESSAGE "WELCOME TO SAMCHAT ENGINE ver 0.2\n"

#define PORTNO 8080
