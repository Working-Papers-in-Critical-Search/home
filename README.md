# Working Papers in Critical Search

[![Website](https://img.shields.io/badge/website-live-brightgreen)](https://working-papers-in-critical-search.github.io/home/)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

**A home for history that shows its work.**

*Working Papers in Critical Search* publishes scholarship at the intersection of history, computation, and critical approaches to political economy, empire, and environment. We treat method and interpretation as inseparable: papers should make their evidentiary chains explicit — where sources originate, how they have been transformed, how methods have been tested, what the data's limitations are, and which passages substantiate the interpretation.

This repository (`home`) is the journal's main site at <https://working-papers-in-critical-search.github.io/home/>. Each paper lives in its own separate repository under the [Working-Papers-in-Critical-Search](https://github.com/Working-Papers-in-Critical-Search) GitHub organization.

## Live site

<https://working-papers-in-critical-search.github.io/home/>

## Editors

- **Jo Guldi** (Emory University) — <https://www.joguldi.com/>
- **Jim Clifford** (University of Saskatchewan) — <https://jimclifford.ca/>

## For authors

We publish in four formats: draft papers, dataset papers, method notes, and short pieces. See the full [submission guide](https://working-papers-in-critical-search.github.io/home/submit.html) for what's in scope and how the editorial loop works.

The short version: draft in your own repo (forked from the [paper template](https://github.com/Working-Papers-in-Critical-Search/paper-template)) or send the editors a notebook / Word doc / `.qmd`. When the work is ready, the editors handle the technical handoff — pulling the paper into its own repo in the org, configuring GitHub Pages, and adding you as a collaborator for revisions. Editorial review happens in pull-request comments, not blind peer review.

Once the paper is approved, we tag a `v1.0` release; Zenodo archives the snapshot and mints a DOI; the paper joins the [main listing](https://working-papers-in-critical-search.github.io/home/papers/).

For the broader intellectual rationale, see [Paper 001 — Why a Working Paper Series on Critical Search Now](https://working-papers-in-critical-search.github.io/paper-001-introduction/).

## For readers

Each published paper has its own permanent home: a Quarto-rendered HTML site, a tagged GitHub release, and a Zenodo-minted DOI for the version you cite. Papers can be revised; substantive revisions get a new version tag and a new DOI, and previous versions remain citeable.

## Repository layout

This repo (`home`) contains the journal's chrome and listings only:

| File / dir | Purpose |
|---|---|
| `index.qmd`, `about.qmd`, `submit.qmd` | The home, about, and submission pages |
| `papers/index.qmd` | The papers listing (Quarto listing, sourced from per-paper stubs) |
| `papers/<slug>/index.qmd` | One per published paper — metadata stub pointing at the paper's own GitHub Pages site |
| `_includes/`, `_custom.scss`, `_tokens.scss` | Shared chrome (topbar, footer, typography) |
| `_listing-paper-row.ejs` | EJS template for each paper row in the listing |
| `_quarto.yml` | Site config |
| `.github/workflows/publish.yml` | Auto-deploys to GitHub Pages on push to `main` |

Papers themselves live in separate repositories. See [paper-001-introduction](https://github.com/Working-Papers-in-Critical-Search/paper-001-introduction) for the canonical example.

## Tech stack

| Component | Purpose |
|---|---|
| [Quarto](https://quarto.org) | Renders pages from `.qmd` to HTML |
| [GitHub Pages](https://pages.github.com) | Static hosting (one site per repo) |
| [Zenodo](https://zenodo.org) | Per-release DOI minting and archiving |

(Comments on individual papers use [Hypothes.is](https://hypothes.is/), wired up in the paper template, not in this repo. The home site does not run Giscus.)

## Local development

```bash
git clone git@github.com:Working-Papers-in-Critical-Search/home.git
cd home
quarto preview   # local server with live reload
quarto render    # build the static site to _site/
```

GitHub Pages auto-publishes on push to `main` via `.github/workflows/publish.yml`.

## License

- Content: [CC-BY 4.0](LICENSE.md)
- Code: MIT (unless otherwise specified)

## Contact and contributions

- Editorial questions: <jim.clifford@usask.ca>, <jo.guldi@emory.edu>
- Site bugs: [open an issue](https://github.com/Working-Papers-in-Critical-Search/home/issues)
- Site improvements: open a PR. Test locally with `quarto preview` first.
