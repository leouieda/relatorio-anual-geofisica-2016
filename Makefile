TEX := pdflatex
MS := relatorio
TARGET := $(MS).pdf
SOURCE := $(MS).tex

all: $(TARGET)

$(TARGET): $(SOURCE) img/* figures/*.eps parte-paper.tex
	$(TEX) $<
	bibtex $(MS)
	$(TEX) $<
	$(TEX) $<

clean:
	rm -rf *.aux *.log *.bbl *.blg *.out $(TARGET) figs/*-eps-converted-to.pdf
