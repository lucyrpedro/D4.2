
PDFLATEX_FLAGS=-shell-escape

all:
	#pdflatex report && bibtex report && makeglossaries report && pdflatex report && pdflatex report
	pdflatex ${PDFLATEX_FLAGS} report
	bibtex report
	pdflatex ${PDFLATEX_FLAGS} report
	pdflatex ${PDFLATEX_FLAGS} report
	#pdflatex report && biber report && pdflatex report && pdflatex report



clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.bfc
	rm -f *.run.xml
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.glsdefs
	rm -f *.ilg
	rm -f *.ind
	rm -f *.ist
	rm -f *.log
	rm -f *.toc
	rm -f report.pdf
