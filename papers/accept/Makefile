TARGET=accept
EXTRACLEAN := accept.synctex.gz
include Makefile.include
PDFLATEX += -synctex=1

.PHONY: results
results:
	$(MAKE) -C $@

.PHONY: up
up: $(PDFTARGETS)
	scp $(PDFTARGETS) recycle.cs.washington.edu:public_html/drafts
