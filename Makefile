PDF = tpm.pdf
SLIDES = slides.pdf

all: $(PDF) $(SLIDES)

pdf: $(PDF)

slides: $(SLIDES)

slides.pdf: slides.tex
	@echo [LATEX] $< -\> $@
	@pdflatex $<
	@pdflatex $<

tpm.pdf: tpm.tex tpm.aux
	@echo [LATEX] $< -\> $@
	@pdflatex $<
	@bibtex tpm.aux
	@pdflatex $<
	@pdflatex $<
clean:
	rm $(PDF) $(SLIDES)
