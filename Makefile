PDF = tpm.pdf

all: $(PDF)

%.pdf: %.tex %.aux %.toc
	@echo [LATEX] $< -\> $@
	@pdflatex $< > /dev/null
	@bibtex $*.aux > /dev/null
	@pdflatex $< > /dev/null
	@pdflatex $< > /dev/null
clean:
	rm -rf $(PDF)
