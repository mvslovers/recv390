#
# Makefile for Linux version of RECV390 
#

DESTDIR  = $(PREFIX)/usr/bin

# Standard flags for all architectures
CFLAGS	 = -O2 -Wall -fPIC -DARCH=390
CFL_370  = -O2 -Wall -fPIC -DARCH=370
LFLAGS	 = -lpthread

CFLAGS	 += -malign-double
CFL_370  += -malign-double

EXEFILES = recv390

RECV_OBJS = recv390.o

all:	   $(EXEFILES)

recv390: $(RECV_OBJS)
	$(CC) -o recv390 $(RECV_OBJS)

install:  $(EXEFILES)
	cp $(EXEFILES) $(DESTDIR)

