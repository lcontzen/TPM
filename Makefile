PDF = tpm.pdf

all: $(PDF)

%.pdf: %.tex %.aux
	@echo [LATEX] $< -\> $@
	@pdflatex $<
	@bibtex $*.aux
	@pdflatex $<
	@pdflatex $<
clean:
	rm $(PDF)
