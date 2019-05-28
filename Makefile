rdrand: rdrand.c
	@grep  -q rdrand /proc/cpuinfo
	cc -O3 rdrand.c -o rdrand

install:
	make rdrand
	install rdrand $(HOME)/bin

clean:
	rm rdrand
