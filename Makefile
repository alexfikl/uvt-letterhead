TEXMK?=latexmk
OUTDIR?=latex.out
TEXFLAGS?=-pdflua -output-directory=$(OUTDIR)

all: template assets

help: 								## Show this help
	@echo -e "Specify a command. The choices are:\n"
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[0;36m%-12s\033[m %s\n", $$1, $$2}'
	@echo ""
.PHONY: help

template: template.pdf				## Compile template example
.PHONY: template

assets: images/template.png			## Compile assets for example
.PHONY: assets

typos:								## Run typos over writeups
	typos --sort
.PHONY: typos

clean:								## Remove temporary compilation files
	rm -rf latex.out \
	rm -rf *.aux *.log *.out
.PHONY: clean

purge: clean						## Remove all generated files
	rm -rf template.pdf images/template.png
.PHONY: purge

template.pdf: template.tex uvt-letterhead.sty
	$(TEXMK) $(TEXFLAGS) $<
	$(TEXMK) $(TEXFLAGS) $<
	@cp $(OUTDIR)/$@ .

images/template.png: template.pdf
	convert \
		-verbose \
		-density 300 \
		-trim \
		$< \
		-quality 100 \
		-flatten \
		-sharpen 0x1.0 \
		$@
