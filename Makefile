PDF = tpm.pdf
SLIDES = slides.pdf

all: $(PDF) $(SLIDES)

pdf: $(PDF)

slides: $(SLIDES)

slides.pdf: slides.tex
	@echo [LATEX] $< -\> $@
	@pdflatex $<
	@pdflatex $<

tpm.pdf: %.tex %.aux
	@echo [LATEX] $< -\> $@
	@pdflatex $<
	@bibtex $*.aux
	@pdflatex $<
	@pdflatex $<
clean:
	rm $(PDF) $(SLIDES)
