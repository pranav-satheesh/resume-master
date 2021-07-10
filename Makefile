# LaTeX Makefile

DOC = resume

.PHONY: all
all: pdf
pdf:
	latexmk -f -pdf $(DOC).tex

.PHONY: clean
clean:
	latexmk -c
	rm *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.bbl &> /dev/null

.PHONY: cleanall
cleanall:
	latexmk -C
	rm *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.bbl &> /dev/null
