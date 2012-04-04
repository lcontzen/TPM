PDF = tpm.pdf

all: $(PDF)

%.pdf: %.tex %.aux
	@echo [LATEX] $< -\> $@
	@pdflatex $< > /dev/null
	@bibtex $*.aux > /dev/null
	@pdflatex $< > /dev/null
	@pdflatex $< > /dev/null
clean:
	rm $(PDF)
