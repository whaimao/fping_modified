
INCLUDES := -I. 

#for rokid toolchain
#PREFIX := /data/linux/rokid/rokid/output/banban_m2_a113/host/usr/bin/aarch64-linux-gnu-

CC = $(PREFIX)gcc
CXX = $(PREFIX)g++
LINK = $(PREFIX)g++

CFILES:= \
$(wildcard ./*.c)

OBJFILE = $(CFILES:.c=.o)

CFLAGS = -O2

TARGET = ping

all:$(TARGET)

$(TARGET): $(OBJFILE)
	$(CC) $^ $(LIBS)  -o $@

%.o:%.c
	$(CC) -o $@ $(CFLAGS)  -c $< $(INCLUDES)

clean:
		rm -f ${TARGET} ${OBJFILE}
