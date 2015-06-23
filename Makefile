TARGET := thesis
include Makefile.include
PDFLATEX := $(subst pdflatex,xelatex,$(PDFLATEX))
EXTRACLEAN := $(TARGET).synctex.gz metadata.tex $(TARGET).thm $(TARGET).xdv
DRAFTFLAG := --no-pdf

BIBTEX := biber
ifneq ($(QUIET),)
BIBERRFILTER := | grep '^\(WARN\|ERROR\|FATAL\)'
endif

export TEXINPUTS := .:./fontspec:$(TEXINPUTS)

%.tex: %.json
	./json2tex.py $* < $< > $@

deploy: $(PDFTARGETS)
	scp $(PDFTARGETS) recycle.cs.washington.edu:public_html/share
	@echo https://homes.cs.washington.edu/~$(USER)/share/$(PDFTARGETS)

.PHONY: fast
fast:
	$(PDFLATEX) $(TARGET) $(ERRFILTER)
