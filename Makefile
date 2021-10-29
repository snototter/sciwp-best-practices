.PHONY : clean cleanx cleanx1 all default

MAINTEX = sciwp-best-practices

default: pdf1

all: | cleanx pdf clean


pdf:
	pdflatex $(MAINTEX).tex
	bibtex $(MAINTEX)
	pdflatex $(MAINTEX).tex
	pdflatex $(MAINTEX).tex
	pdflatex $(MAINTEX).tex


pdf1:
	pdflatex $(MAINTEX).tex

clean cleanx1:
	-rm -f *.aux
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.log
	-rm -f *.ewb
	-rm -f *.ewa
	-rm -f $(MAINTEX).brf
	-rm -f $(MAINTEX).log
	-rm -f $(MAINTEX).bcf
	-rm -f $(MAINTEX).run.xml
	-rm -f $(MAINTEX).synctex.gz
	-rm -f $(MAINTEX).out
	-rm -f $(MAINTEX).idx
	-rm -f $(MAINTEX).ind
	-rm -f $(MAINTEX).ilg
	-rm -f $(MAINTEX).toc

cleanx: cleanx1
	-rm -f $(MAINTEX).pdf

acro:
	acro $(MAINTEX).pdf

evince:
	evince $(MAINTEX).pdf &

okular:
	okular $(MAINTEX).pdf &

