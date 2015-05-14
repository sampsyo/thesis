TARGET=paper
include Makefile.include
PDFLATEX := $(PDFLATEX) -synctex=1
EXTRACLEAN := $(TARGET).synctex.gz comment.cut

.PHONY: results
results:
	make -C results

appendix.pdf: appendix.tex semantics.tex proof.tex
	$(PDFLATEX) appendix

.PHONY: up
up: $(TARGET).pdf
	scp $(TARGET).pdf recycle.cs.washington.edu:public_html/drafts/passert.pdf

.PHONY: date
date: $(TARGET).pdf
	cp $(TARGET).pdf passert-`date "+%m-%d"`.pdf
