TARGET := thesis
include Makefile.include
PDFLATEX := $(subst pdflatex,xelatex,$(PDFLATEX)) -synctex=1
EXTRACLEAN := $(TARGET).synctex.gz metadata.tex

export TEXINPUTS := .:./fontspec:$(TEXINPUTS)

%.tex: %.json
	./json2tex.py $* < $< > $@

deploy: $(PDFTARGETS)
	scp $(PDFTARGETS) recycle.cs.washington.edu:public_html/share
	@echo https://homes.cs.washington.edu/~$(USER)/share/$(PDFTARGETS)
