TEXMK := "latexmk"
TEXOUTDIR := "latex.out"
TEXFLAGS := "-pdflua"

_default:
    @just --list

[private]
pdf basename:
    {{ TEXMK }} {{ TEXFLAGS }} -output-directory={{ TEXOUTDIR }} {{ basename }}.tex
    {{ TEXMK }} {{ TEXFLAGS }} -output-directory={{ TEXOUTDIR }} {{ basename }}.tex
    @cp {{ TEXOUTDIR }}/{{ basename }}.pdf .

[doc("Build template example")]
template:
    @just pdf template

[doc("Compile assets for example")]
assets: template
    magick \
        -verbose \
        -density 300 \
        template.pdf \
        -quality 100 \
        -flatten \
        -sharpen 0x1.0 \
        images/template.png

[doc("Update license text")]
license:
    python -m reuse download CC-BY-4.0
    cp LICENSES/CC-BY-4.0.txt LICENSE
    @rm -rf LICENSES

[doc("Remove temporary compilation files")]
clean:
    rm -rf {{ TEXOUTDIR }}
    rm -rf *.aux *.log *.out

[doc("Remove all generated files")]
purge: clean
    rm -rf *.pdf images/template.png
