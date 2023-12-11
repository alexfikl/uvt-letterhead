# UVT Letterhead in LaTeX

This is a reproduction of the UVT (West University of Timișoara) letterhead in
Latex. It uses the UVT [branding](https://dci.uvt.ro/identitate-vizuala)
and [replicates this document](https://docs.google.com/document/d/1qyRK3fjVANnRFPRCYI8VLL42Ay-z07ZM/edit).
A full description of the various parts of the branding can be found in the
[Official Manual](https://www.dci.uvt.ro/wp-content/uploads/2019/03/MANUAL-IDENTITATE-NEW-WEB-FINAL-2016-.pdf).

This template style is fairly complete and working well, but any feature requests
or bug reports to improve it are **very welcome**!

## How to use

Copy `uvt-letterhead.sty`, `template.tex`, and the relevant logos from `assets/`
to your working directory. You will need `signature.png` or some other signature
image if you want to use one. Modify `template.tex` as appropriate and build with
`pdflatex` (or `xelatex` or `lualatex` for the adventurous).

Note that, by default this uses the [Myriad Pro](https://fonts.adobe.com/fonts/myriad)
font. This font is generally not available for free, but can be purchased from
Adobe or a [reseller](https://www.fontspring.com/fonts/adobe/myriad-pro). The
OTF fonts can be directly loaded by the `XeLaTeX` or `LuaLaTeX` engines. To
get it working on `PDFLaTeX`, use the [FontPro](https://github.com/sebschub/FontPro)
distribution. If you cannot obtain the font (or the installation does not work
for some reason), it can be disabled with the `nomyriadpro` option. In general,
we recommend using a free sans serif font instead, e.g `\usepackage{helvet}` for
the Helvetica look-alike Nimbus Sans L or `\usepackage{paratype}` for the PT Sans
fonts that resemble Myriad Pro better.

The package defines the following options used as `\usepacakge[opts]{uvt-letterhead}`.

| Option                            | Description                           |
| :-                                | :-                                    |
| `doublespacing`                   | Use double spaced paragraphs (default `onehalfspacing`) |
| `nomyriadpro`                     | Do not load the *Myriad Pro* fonts           |
| `headerlogo`                      | Place the department logo in header instead of footer |
| `department=<value>`              | Use predefined department info (header and footer) |
| `layoutgrid`                      | Adds a debug grid to check alignment  |

The standard branding colors are given below.

| Color                             | RGB
| :-                                | :-
| `UVTLightBlue`                    | ![#3471B8](https://placehold.co/15x15/3471B8/3471B8.png) `(52, 113, 183)` |
| `UVTDarkBlue`                     | ![#024A76](https://placehold.co/15x15/024A76/024A76.png) `(3, 75, 119)`   |
| `UVTOrange`                       | ![#E3AB23](https://placehold.co/15x15/E3AB23/E3AB23.png) `(228, 172, 36)` |

The following helper macros are defined for some standard functionality.

| Macro                             | Description                           |
| :-                                | :-                                    |
| `\uvtdate`                        | Current date formatted in `DD.MM.YYYY`|
| `\uvtopenletter`                  | Adds a standard letter opening on the left   |
| `\uvtcloseletter`                 | Adds a standard letter signature on the left |
| `\uvtcloseform`                   | Adds date on the left and name on the right |

The following commands are available to define the department, author, etc.

| Command                           | Description                           |
| :-                                | :-                                    |
| `\fromdate{<text>}`               | Date (default `\today`)               |
| `\closing{<text>}`                | Closing text (e.g. `Sincerely`) (optional)|
| `\fromsignature{<filename>}`      | Signature file (closing) (optional)   |
| `\fromname{<text>}`               | Author name (closing)                 |
| `\fromemail{<text>}`              | Author email (closing) (optional)     |
| `\fromweb{<text>}`                | Author website (closing) (optional)   |
| `\fromoffice{<text>}`             | Author office / sub-department (header) (optional)|
| `\fromuniversity{<text>}`         | University name                       |
| `\fromuniversitylogo{<filename>}` | Logo for the university               |
| `\fromdept{<text>}`               | Department name (header)              |
| `\fromdeptlogo{<filename>}`       | Department logo (header)              |
| `\fromdeptaddress{<text>}`        | Department address (footer)           |
| `\fromdeptphone{<text>}`          | Department phone (footer)             |
| `\fromdeptemail{<text>}`          | Department email (footer)             |
| `\fromdeptweb{<text>}`            | Department website (footer)           |

The `\fromdept*` commands can be used to overwrite department information set
using `department=name` or to define custom departments that are not yet included.
The following departments are currently defined. Notably, this does not include
any of the administrative offices that also have logos in the official branding.
Help to add these is very appreciated!

| Keyword               | Department                                         |
| :-                    | :-                                                 |
| arte                  | Faculty of Arts and Design                         |
| cbg                   | Faculty of Chemistry, Biology, Geography           |
| drept                 | Faculty of Law                                     |
| feaa                  | Faculty of Economy and Business Administration     |
| fefs                  | Faculty of Sports                                  |
| fizica                | Faculty of Physics                                 |
| fmi                   | Faculty of Mathematics and Computer Science        |
| fmt                   | Faculty of Music and Theater                       |
| fsp                   | Faculty of Sociology and Psychology                |
| lit                   | Faculty of Letters, History and Teology            |
| pfc                   | Faculty of Political Science, Philosophy and Communication Sciences |
| icam                  | ICAM                                               |
| uvt                   | Dean / Main office                                 |

Their logos are all expected to live in `assets/uvt-logo-<dept>.png`, but can be
easily overwritten using
```latex
\fromdeptlogo{figures/my-dept-logo.png}
```

## What it looks like

[Full PDF](template.pdf)
![template](assets/template.png "template")

## Acknowledgement

The skeleton of `uvt-letterhead.sty` was copied from
[Luke Olson's reproduction](https://github.com/lukeolson/illinois-letterhead) of
the University of Illinois at Urbana-Champaign letterhead, though little of
the original remains.

## License

MIT
