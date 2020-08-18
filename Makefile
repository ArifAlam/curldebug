CXX = gcc 
CFLAGS = -Wall -Werror

INCLUDE = -I/usr/local/include
LDFLAGS = -L/usr/local/lib 
LDLIBS = -lcurl

SOURCES = src/main.c
OUT = curltest

.PHONY: all

all: build

build: $(SOURCES)
	    $(CXX) -o $(OUT) $(SOURCES) $(INCLUDE) $(CFLAGS) $(LDFLAGS) $(LDLIBS)

$(OUT): $(patsubst %.c,%.o,$(SOURCES))
