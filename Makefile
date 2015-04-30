TARGET=thesis
include Makefile.include
PDFLATEX := $(PDFLATEX) -synctex=1
EXTRACLEAN := $(TARGET).synctex.gz
