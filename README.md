# UVT Letterhead in LaTeX

This is a reproduction of the UVT (West University of Timișoara) letterhead in
Latex. It uses the UVT [branding](https://www.uvt.ro/en/dcimi/identitate-vizuala/)
and [replicates this document](https://docs.google.com/document/d/1qyRK3fjVANnRFPRCYI8VLL42Ay-z07ZM/edit).

This is still a work in progress and the instructions on university branding are
not very thorough, so feature requests or bug reports to improve this template
are **very welcome**!

## How to use

Copy `uvt-letterhead.sty`, `template.tex`, and `assets/` to your working directory.
You will need `sig.png` or some other signature image if you want to use one.
Modify `template.tex` as appropriate and build with `pdflatex`.

The package defines the following options used as `\usepacakge[opts]{uvt-letterhead}`.

| Option                            | Description                           |
| :-                                | :-                                    |
| `doublespacing`                   | Use double spaced paragraphs (default `onehalfspacing`) |
| `layoutgrid`                      | Adds a debug grid to check alignment  |

The standard branding colors are given below.

| Color                             | RGB
| :-                                | :-
| `UVTLightBlue`                    | ![#3471B8](https://placehold.co/15x15/3471B8/3471B8.png) `(52, 113, 183)` |
| `UVTDarkBlue`                     | ![#024A76](https://placehold.co/15x15/024A76/024A76.png) `(3, 75, 119)`   |
| `UVTOrange`                       | ![#E3AB23](https://placehold.co/15x15/E3AB23/E3AB23.png) `(228, 172, 36)` |

The following commands are available to define the department, author, etc.

| Command                           | Description                           |
| :-                                | :-                                    |
| `\fromdate{<text>}`               | Date (default `\today`)               |
| `\closing{<text>}`                | Closing text (e.g. `Sincerely`) (optional)|
| `\signaturefile{<filename>}`      | Signature file (closing) (optional)   |
| `\fromname{<text>}`               | Author name (closing)                 |
| `\fromemail{<text>}`              | Author email (closing) (optional)     |
| `\fromweb{<text>}`                | Author website (closing) (optional)   |
| `\fromdept{<text>}`               | Department name (header)              |
| `\logofile{<filename>}`           | Department logo (header)              |
| `\fromdeptaddress{<text>}`        | Department address (footer)           |
| `\fromdeptphone{<text>}`          | Department phone (footer)             |
| `\fromdeptemail{<text>}`          | Department email (footer)             |
| `\fromdeptweb{<text>}`            | Department website (footer)           |

For the `\fromdept*` commands, there are also some predefined departments.
Using these commands sets all the `\fromdept*` values to the official ones
and the logo to `\logofile{assets/uvt-logo-<deptname>.png}`.
This list could use some help from interested parties!

| Command               | Description                                        |
| :-                    | :-                                                 |
| `\fromdeptarte`       | Faculty of Arts and Design                         |
| `\fromdeptcbg`        | Faculty of Chemistry, Biology, Geography           |
| `\fromdeptdrept`      | Faculty of Law                                     |
| `\fromdeptfeaa`       | Faculty of Economy and Business Administration     |
| `\fromdeptfizica`     | Faculty of Physics                                 |
| `\fromdeptfmi`        | Faculty of Mathematics and Computer Science        |

You can of course still define your own custom department information and change
the logo. For example, to use the math department details and the default logo
write:

```latex
\fromdeptfmi
\logofile{assets/uvt-logo.png}
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
