TEXMK?=latexrun
TEXFLAGS?=--latex-cmd xelatex -O latex.out

all: template.pdf assets/template.png

template.pdf: template.tex uvt-letterhead.sty
	$(TEXMK) $(TEXFLAGS) $<

assets/template.png: template.pdf
	convert \
		-verbose \
		-density 300 \
		-trim \
		$< \
		-quality 100 \
		-flatten \
		-sharpen 0x1.0 \
		$@

clean:
	rm -rf latex.out \
	rm -rf *.aux *.log *.out

purge: clean
	rm -rf template.pdf assets/template.png


.PHONY: all clean purge

