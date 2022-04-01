all: en hu pt

SOURCES:	gergely_benko_cv.tex \
			dictionary.tex

en: $(SOURCES)
	latexmk -jobname=cv_en -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifpt\newif\ifhu\entrue\input{%S}"' gergely_benko_cv

hu: $(SOURCES)
	latexmk -jobname=cv_hu -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifpt\newif\ifhu\hutrue\input{%S}"' gergely_benko_cv

pt: $(SOURCES)
	latexmk -jobname=cv_pt -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifpt\newif\ifhu\pttrue\input{%S}"' gergely_benko_cv

clean:
	rm -f *aux *fdb_latexmk *fls *log *xml *gz *.out *.pdf