# UVT Letterhead in LaTeX

This is a reproduction of the UVT (West University of Timisoara) letterhead in
Latex. It uses the UVT [branding](https://www.uvt.ro/en/dcimi/identitate-vizuala/)
and [replicates this document](https://docs.google.com/document/d/1qyRK3fjVANnRFPRCYI8VLL42Ay-z07ZM/edit).

## How to use

Copy `uvt-letterhead.sty`, `template.tex`, and `assets/` to your working directory.
You will need `sig.png` or some other signature image if you want to use one.
Modify `template.tex` as appropriate and build with `pdflatex`.

The package defines the following options used as `\usepacakge[opts]{uvt-letterhead}`.

| Option                            | Description                           |
| :-                                | :-                                    |
| `doublespacing`                   | Use double spacing paragraphs         |

The following commands are available to define the department, author, etc.

| Command                           | Description                           |
| :-                                | :-                                    |
| `\fromdate{<text>}`               | Date (default `\today`)               |
| `\closing{<text>}`                | Closing text (e.g. `Sincerely`)       |
| `\signaturefile{<filename>}`      | Signature file (closing)              |
| `\fromname{<text>}`               | Author name (closing)                 |
| `\fromemail{<text>}`              | Author email (closing)                |
| `\fromweb{<text>}`                | Author website (closing)              |
| `\fromdept{<text>}`               | Department name (header)              |
| `\logofile{<filename>}`           | Department logo (header)              |
| `\fromdeptaddress{<text>}`        | Department address (footer)           |
| `\fromdeptphone{<text>}`          | Department phone (footer)             |
| `\fromdeptemail{<text>}`          | Department email (footer)             |
| `\fromdeptweb{<text>}`            | Department website (footer)           |

For the `\fromdept*` commands, there are also some predefined departments.
This list could use some help from interested parties!

| Command               | Description                                           |
| :-                    | :-                                                    |
| `\fromdeptarte`       | Facultatea de Arte                                    |
| `\fromdeptcbg`        | Facultatea de Biologie, Chimie, Geografie             |
| `\fromdeptdrept`      | Facultatea de Drept                                   |
| `\fromdeptfeaa`       | Facultatea de Economie si de Administrare a Afacerilor|
| `\fromdeptfizica`     | Facultatea de Fizica                                  |
| `\fromdeptfmi`        | Facultatea de Matematica si Informatica               |

## What it looks like

[Full PDF](template.pdf)

## Acknowledgement

The skeleton of `uvt-letterhead.sty` was copied from
[Luke Olson's reproduction](https://github.com/lukeolson/illinois-letterhead) of
the University of Illinois at Urbana-Champaign letterhead, though little of
the original remains.

## License

MIT
