

%.eps: %.svg
	inkscape -f $< -E $@

all: $(addsuffix .eps, $(basename $(wildcard *.svg)))

clean:
	rm -f *.eps
	rm -f *-eps-converted-to.pdf
