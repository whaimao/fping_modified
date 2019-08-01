
INCLUDES := -I. 

CCFLAGS := -std=c99

#for rokid toolchain
#PREFIX := /data/linux/rokid/rokid/output/banban_m2_a113/host/usr/bin/aarch64-linux-gnu-

CC = $(PREFIX)gcc
CXX = $(PREFIX)g++
LINK = $(PREFIX)g++

CFILES:= \
$(wildcard ./*.c)

OBJFILE = $(CFILES:.c=.o)


TARGET = ping

all:$(TARGET)

$(TARGET): $(OBJFILE)
	$(CC) $^ $(LIBS) -Wall -o $@

%.o:%.c
	$(CC) -o $@ $(CCFLAGS)  -c $< $(INCLUDES)

clean:
		rm -f ${TARGET} ${OBJFILE}
