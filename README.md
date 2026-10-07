# Camilo Escobar-Sierra — Academic CV

Source for my public academic CV, built with **Quarto**, **Typst** and **BibTeX**.

- **CV landing page:** https://miloes114.github.io/miloes114-academic-cv/
- **Direct PDF:** https://miloes114.github.io/miloes114-academic-cv/Camilo_Escobar_Sierra_Academic_CV.pdf
- **Academic website:** https://miloes114.github.io

The CV is organised as modular Quarto content, with publications maintained in BibTeX and the final PDF rendered automatically through GitHub Actions.

## What is in this repository

```text
.
├── cv.qmd
├── _quarto.yml
├── _variables.yml
├── content/
├── bibliography/
│   ├── publications.bib
│   └── cv.csl
├── styles/
│   └── cv.typ
└── .github/
    └── workflows/
        └── render-cv.yml
```

- `cv.qmd` defines the section order.
- `content/` contains the human-readable CV sections.
- `bibliography/publications.bib` is the publication source.
- `bibliography/cv.csl` controls bibliography formatting and ordering.
- `styles/cv.typ` defines the PDF typography, spacing, colour and footer.
- `.github/workflows/render-cv.yml` renders the CV and publishes the latest PDF with GitHub Pages.

## Build locally

Install [Quarto](https://quarto.org/) and run:

```bash
quarto render cv.qmd
```

The rendered PDF is written to:

```text
_site/Camilo_Escobar_Sierra_Academic_CV.pdf
```

The current build uses Typst through Quarto and the built-in Libertinus Serif font, so no external font files are required.

## Use this repository for your own academic CV

This repository can also serve as a starting point for a reproducible academic CV.

A simple workflow is:

1. **Fork the repository** to your GitHub account.
2. Replace the personal values in `_variables.yml`.
3. Rewrite the relevant files in `content/` with your own academic record.
4. Replace `bibliography/publications.bib` with your publication list.
5. Adjust section order in `cv.qmd`.
6. Customise typography and colour in `styles/cv.typ`.
7. Update the output filename and project title in `_quarto.yml`.
8. Update the URLs and landing-page text in `.github/workflows/render-cv.yml`.
9. Render locally and inspect the PDF.
10. Enable **GitHub Pages → Source → GitHub Actions** if you want a stable public PDF URL.

The source is intentionally modular: most routine updates require editing one small Markdown/Quarto file or one BibTeX record rather than rebuilding the document manually.

## Publication workflow

Publications are rendered from `bibliography/publications.bib` using citeproc and the local CSL file. Adding a publication therefore normally means adding one complete BibTeX record and rendering the CV again.

The included CSL produces a reverse-chronological bibliography with compact DOI labels, while the Typst layer applies the hanging indentation and spacing used in the PDF.

## Automated publishing

A push to `main` that changes the CV source triggers the GitHub Actions workflow. It:

1. checks out the repository;
2. installs Quarto;
3. renders the PDF;
4. verifies that the PDF exists;
5. uploads the PDF as a workflow artifact;
6. prepares a small GitHub Pages landing page;
7. deploys the current PDF to GitHub Pages.

This keeps the public PDF URL stable while the source remains version-controlled.

## Reusing the design

The Quarto configuration, GitHub Actions workflow, CSL customisation, Typst styling and reusable repository structure are available under the MIT License.

My scientific writing, biographical text, publication annotations and other personal academic content are not part of the reusable template and remain my original content. When adapting the repository, replace those sections with your own material.

If this repository helps you build your CV, a link back is appreciated but not required.

## License

Code, configuration, workflow files, styles and reusable document components are licensed under the [MIT License](LICENSE).

Original scientific writing, biographical text and personal academic content remain © Camilo Escobar-Sierra unless otherwise stated.
