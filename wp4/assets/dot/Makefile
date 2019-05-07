SOURCES = $(wildcard *.dot)
OBJECTS = $(SOURCES:.dot=.pdf)

all: $(OBJECTS) Makefile

%.pdf: %.dot
	dot -Tpdf $< -o $@

clean:
	rm $(OBJECTS)
