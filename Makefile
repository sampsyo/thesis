TARGET := thesis
include Makefile.include
PDFLATEX := $(subst pdflatex,xelatex,$(PDFLATEX)) -synctex=1
EXTRACLEAN := $(TARGET).synctex.gz metadata.tex

export TEXINPUTS := .:./fontspec:$(TEXINPUTS)

%.tex: %.json
	./json2tex.py $* < $< > $@
