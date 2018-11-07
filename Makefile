# 단순 반복 작업을 자동화시켜주는 매크로

CC = gcc
CFLAGS =
LDFLAGS =
# CFLAGS : gcc 컴파일 옵션들을 선언
# LDFLAGS : Library에 관한 설정을 선언

# .c를 컴파일해서 .o(목적파일)를 만들어내는 루틴을 자동화
.SUFFIXES : .c .o
.c.o :
	$(CC) -c $(CFLAGS) $<

ALL = server client

all: $(ALL)

# $@ : 현재의 목표 파일(Target)
# $< : 현재의 목표파일보다 더 최근에 갱신된 파일 이름
server: server.o
	$(CC) -o $@ $< $(LDFLAGS)

client: client.o
	$(CC) -o $@ $< $(LDFLAGS)

clean :
	rm -rf *.o $(ALL)
