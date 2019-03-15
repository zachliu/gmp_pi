OBJS = gmp-chudnovsky.o
CC = gcc
CFLAGS = -Wall -c
LFLAGS = -Wall

p1 : $(OBJS)
	$(CC) -s $(LFLAGS) $(OBJS) -o gmp-chudnovsky -lgmp -lm

gmp-chudnovsky.o : gmp-chudnovsky.c
	$(CC) $(CFLAGS) gmp-chudnovsky.c

clean:
	\rm *.o

run:
	./gmp-chudnovsky 100000000 1

find_bday:
	time rg -ob "900305" pi.txt
