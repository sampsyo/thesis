TARGET := approx-within
include Makefile.include

PDFLATEX := $(PDFLATEX) -synctex=1

.PHONY: up
up: $(PDFTARGETS)
	scp $(PDFTARGETS) recycle.cs.washington.edu:public_html/drafts
	@echo https://homes.cs.washington.edu/~$(USER)/drafts/$(PDFTARGETS)
