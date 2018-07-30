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
