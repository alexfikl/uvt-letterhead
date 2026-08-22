TEXMK := "latexmk"
TEXOUTDIR := "latex.out"
TEXFLAGS := "-pdflua -output-directory=" + TEXOUTDIR

_default:
    @just --list

# {{{ pdf

[private]
pdf basename:
    {{ TEXMK }} {{ TEXFLAGS }} {{ basename }}.tex
    @cp {{ TEXOUTDIR }}/{{ basename }}.pdf .

[doc("Build template example")]
template:
    @just pdf template

[doc("Compile preview for template example")]
preview: template
    magick \
        -verbose \
        -density 300 \
        template.pdf \
        -quality 100 \
        -flatten \
        -sharpen 0x1.0 \
        template.png

# }}}

# {{{ linting

[doc("Format source files")]
format: yamlfmt mdformat justfmt

[doc("Format tex files with badness")]
texfmt:
    badness format \
        --wrap stable --math-wrap preserve --indent-width 4 \
        template.tex uvt-letterhead.sty
    @echo -e "\e[1;32mbadness clean!\e[0m"

[doc("Format YAML files with yamlfmt")]
yamlfmt:
    yamlfmt -gitignore_excludes .
    @echo -e "\e[1;32myamlfmt clean!\e[0m"

[doc("Format markdown files with mdformat")]
mdformat:
    python -m mdformat .
    @echo -e "\e[1;32mmdformat clean!\e[0m"

[doc("Run just --fmt over the justfile")]
justfmt:
    just --unstable --fmt
    @echo -e "\e[1;32mjust --fmt clean!\e[0m"

[doc("Run all linting checks over the source code")]
lint: typos badness

[doc("Check for typos (using typos)")]
typos:
    typos --sort --files --config typos.toml
    @echo -e "\e[1;32mtypos clean!\e[0m"

[doc("Lint using badness")]
badness:
    badness lint template.tex uvt-letterhead.sty
    @echo -e "\e[1;32mbadness clean!\e[0m"

[doc("Check PDF/UA2 compliance with verapdf")]
ua: template
    verapdf \
        --flavour 4f --flavour ua2 --format html --progress \
        template.pdf > template.html
    @echo -e "\e[1;32mGenerated 'template.html'!\e[0m"

# }}}

# {{{ develop

[doc("Update license text")]
license:
    python -m reuse download CC-BY-4.0
    cp LICENSES/CC-BY-4.0.txt LICENSE
    @rm -rf LICENSES

[doc("Create a convenient zip file with the template files")]
zip:
    zip -r "$(basename $(pwd)).zip" assets *.sty template.tex

[doc("Remove temporary compilation files")]
clean:
    rm -rf {{ TEXOUTDIR }}
    rm -rf *.aux *.log *.out

[doc("Remove all generated files")]
purge: clean
    rm -rf *.pdf template.png
    rm -rf *.zip

# }}}
