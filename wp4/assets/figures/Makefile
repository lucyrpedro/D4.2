

%.pdf: %.svg
	inkscape -f $< -A $@

all: $(addsuffix .pdf, $(basename $(wildcard *.svg)))

clean:
	rm -rf *.eps *.pdf
