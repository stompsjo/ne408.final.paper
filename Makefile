PAPER=stomps_ne408_final-paper

all: $(PAPER).pdf

$(PAPER).pdf: *.tex references.bib 
	pdflatex $(PAPER).tex
	bibtex $(PAPER).aux
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

clean:
	rm -f $(PAPER).aux $(PAPER).log $(PAPER).blg $(PAPER).bbl $(PAPER).pdf


.PHONY: all clean paper
