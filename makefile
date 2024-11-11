CC=gcc
CFLAGS=-Wall -g
SOURCES=main.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=main

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
    $(CC) $(OBJECTS) -o $(EXECUTABLE)

.c.o:
    $(CC) $(CFLAGS) -c $< -o $@

clean:
    rm -f $(OBJECTS) $(EXECUTABLE)
