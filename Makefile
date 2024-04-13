OBJS = gmp-chudnovsky.o
CC = gcc

UNAME := $(shell uname)

ifeq ($(UNAME),Darwin)
# "MacOS"
CFLAGS += -I/opt/homebrew/opt/gmp/include -Wall -c
LFLAGS += -L/opt/homebrew/opt/gmp/lib/ -Wall
else
# "Linux/Windows"
CFLAGS += -Wall -c
LFLAGS += -Wall
endif

p1 : $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o gmp-chudnovsky -lgmp -lm -v

gmp-chudnovsky.o : gmp-chudnovsky.c
	$(CC) $(CFLAGS) gmp-chudnovsky.c -v

clean:
	\rm *.o

run:
	./gmp-chudnovsky 100000000 1

find_bday:
	time rg -ob "900305" pi.txt
