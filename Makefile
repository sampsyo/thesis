TARGET := thesis
include Makefile.include
PDFLATEX := $(subst pdflatex,xelatex,$(PDFLATEX)) -synctex=1
EXTRACLEAN := $(TARGET).synctex.gz

%.tex: %.json
	./json2tex.py $* < $< > $@
