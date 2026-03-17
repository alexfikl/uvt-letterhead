# UVT Letterhead in LaTeX

[![GitHub Actions Workflow Status](https://github.com/alexfikl/uvt-letterhead/actions/workflows/ci.yml/badge.svg)](https://github.com/alexfikl/uvt-letterhead/actions/workflows/ci.yml)
[![Open in Overleaf](https://img.shields.io/static/v1?label=LaTeX&message=Open-in-Overleaf&color=47a141&style=flat&logo=overleaf)](https://www.overleaf.com/docs?snip_uri=https://github.com/alexfikl/uvt-letterhead/archive/refs/heads/main.zip)

> [!NOTE]
> This template style is fairly complete and working well, but any feature requests
> or bug reports to improve it are **very welcome**! Issues regarding the style
> and differences from the official version are most important.

This is an implementation of the UVT (West University of Timișoara) letterhead in
LaTeX. It uses the [official UVT branding](https://dci.uvt.ro/identitate-vizuala)
and [replicates these documents](https://uvt.ro/wp-content/uploads/2026/03/Antet-UVT-SLF2026-RO-EN.zip).
A full description of the various parts of the branding can be found in the
[Official Manual](https://drive.google.com/file/d/1JLAV3fAorLa279_DEjc4P217ss7pFPwf/view?usp=drive_link).

Templates in the same series:
* [UVT Letterhead Template](https://github.com/alexfikl/uvt-letterhead)
* [UVT Beamer Presentation Template](https://github.com/alexfikl/uvt-beamer)
* [UVT Conference Poster Template](https://github.com/alexfikl/uvt-poster)

## What it Looks Like

[Full PDF](template.pdf)
![template](images/template.png "template")

## How to Use It

Copy `uvt-letterhead.sty`, `template.tex`, and the relevant logos from `assets/`
to your working directory. Some commands also need a `signature.png` image to
display one (usually at the end). Modify `template.tex` as appropriate and build with
`PDFLaTeX` (or `XeLaTeX` or `LuaLaTeX` for the adventurous).

The package defines the following options used as `\usepacakge[opts]{uvt-letterhead}`.

| Option                            | Description                           |
| :-                                | :-                                    |
| `doublespacing`                   | Use double spaced paragraphs (default `onehalfspacing`) |
| `helveticanow`                    | Try to load the *Helvetica Now Display* fonts |
| `department=<value>`              | Use predefined department info (header and footer) |
| `showframe`                       | [DEBUG] Shows a frame around page elements (margins, etc.) |
| `layoutgrid`                      | [DEBUG] Adds a debug grid to check alignment  |

The standard branding colors are given below.

| Color                             | RGB
| :-                                | :-
| `UVTDarkBlue`                     | ![#033A89](https://placehold.co/15x15/033A89/033A89.png) `(3, 58, 137)`   |
| `UVTSkyBlue`                      | ![#2588E7](https://placehold.co/15x15/2588E7/2588E7.png) `(37, 136, 231)` |
| `UVTLightBlue`                    | ![#AED9F8](https://placehold.co/15x15/AED9F8/AED9F8.png) `(174, 217, 248)` |
| `UVTBlack`                        | ![#121212](https://placehold.co/15x15/121212/121212.png) `(18, 18, 18)` |
| `UVTAccentWhite`                  | ![#FCF5F7](https://placehold.co/15x15/FCF5F7/FCF5F7.png) `(252, 245, 247)` |
| `UVTWhite`                        | ![#FFFFFF](https://placehold.co/15x15/FFFFFF/FFFFFF.png) `(255, 255, 255)` |
| `UVTYellow`                       | ![#E3AB23](https://placehold.co/15x15/E3AB23/E3AB23.png) `(228, 172, 36)` |

The following helper macros are defined for some standard functionality.

| Macro                             | Description                           |
| :-                                | :-                                    |
| `\uvtdate`                        | Current date formatted in `DD.MM.YYYY`|
| `\uvtopenletter`                  | Adds a standard letter opening on the right |
| `\uvtcloseletter`                 | Adds a standard letter signature on the left |
| `\uvtcloseform`                   | Adds date on the left and name on the right |

The following commands are available to define the department, author, etc.
The entries marked *letter* refer to the letter opening or closing statement,
the entries marked *header* will appear in the header, and the entries marked
*footer* will appear in the footer.

| Command                           | Description                           |
| :-                                | :-                                    |
| `\fromdate{<text>}`               | Date (default `\today`)               |
| `\closing{<text>}`                | Closing text (e.g. `Sincerely`) (optional)|
| `\fromname{<text>}`               | Author name (letter)                  |
| `\fromsignature{<filename>}`      | Signature file (letter) (optional)    |
| `\fromposition{<text>}`           | Author position (letter) (optional)   |
| `\fromemail{<text>}`              | Author email (letter) (optional)      |
| `\fromweb{<text>}`                | Author website (letter) (optional)    |
| `\fromoffice{<text>}`             | Author office / sub-department (header) (optional)|
| `\fromuniversity{<text>}`         | University name                       |
| `\fromdept{<text>}`               | Department name (header)              |
| `\fromdeptlogo{<filename>}`       | Department logo (header or footer)    |
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
| ffm                   | Faculty of Physics and Mathematics                 |
| fmt                   | Faculty of Music and Theater                       |
| fpse                  | Faculty of Psychology and Educational Sciences     |
| fsas                  | Faculty of Sociology and Social Work               |
| fsgc                  | Faculty of Political Sciences and Communication    |
| info                  | Faculty of Computer Science                        |
| flift                 | Faculty of Letters, History, Philosophy and Teology |
| icam                  | ICAM                                               |
| csud                  | University Doctoral Studies Council                |
| dri                   | University International Relations                 |
| dmacdi                | University Research Management Department          |
| uvt                   | Dean / Main office                                 |

Their logos are all expected to live in `assets/uvt-logo-<dept>.png`, but can be
easily overwritten using
```latex
\fromdeptlogo{figures/my-dept-logo.png}
```

Note that the logos are expected to be square with a white on transparent background.
Most departments have logos in such a format, but we can always modify them and
include them here, if necessary.

## Fonts

Note that the Official Manual recommends the [Helvetica Display
Now](https://www.monotype.com/fonts/helvetica-now) font. This font is generally
not available for free, but can be purchased from Monotype or a
[reseller](https://www.myfonts.com/collections/helvetica-now-font-monotype-imaging).
Ideally, you can get it from the university for official documents. If you
managed to get it, you will need to use the `XeLaTeX` or `LuaLaTeX` engines to
load it (since `PDFLaTeX` does not support OTF or TTF fonts).

If you do not have the recommended font, a good alternative is the open source
`TeX Gyre Heros` font (a quality classic Helvetica clone). This is loaded by
default by the template if the `helveticanow` option is not given or if the
font is not found.

If you are using `XeLaTeX` or `LuaLaTeX`, there are many other nice fonts to
keep in mind that would work well. For example: Carlito (a Calibri clone),
Caladea (a Cambria clone), Montserrat (inspired by Gotham), Adobe Source Sans,
and many others. A nice font will always make your letter look nicer!

## Language

The class provides translations to English and Romanian for all the default
strings (faculty names and such). This can be turned on by using the Babel package
as follows
```latex
\usepackage[romanian]{babel}
\selectlanguage{romanian}
```

Translation fixes and support for additional languages is very welcome!

## Acknowledgement

The skeleton of `uvt-letterhead.sty` was copied from
[Luke Olson's reproduction](https://github.com/lukeolson/illinois-letterhead) of
the University of Illinois at Urbana-Champaign letterhead, though little of
the original remains.

## License

Creative Commons Attribution 4.0 International
