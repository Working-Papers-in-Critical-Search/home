# Contributing to Working Papers in Critical Search

Thank you for your interest in contributing! This guide covers both **paper submissions** and **infrastructure contributions**.

---

## Submitting a Paper

### Before You Submit

1. **Code is required.** Every paper must include executable code. This is not negotiable.
2. **Check your data size.** Files under 10MB can be committed. Larger datasets must be hosted on Zenodo.
3. **Test reproducibility.** Your code should run in a clean Python/R environment.

### Submission Process

#### Option A: Email (Recommended for First-Time Authors)

Send your materials to the editors. We'll handle the technical setup.

**Required:**
- Your notebook (`.qmd`, `.ipynb`, or `.Rmd`)
- Any data files (< 10MB total)
- Author information (name, affiliation, ORCID)

**Optional:**
- `requirements.txt` for Python dependencies
- Bibliography file (`.bib`)

#### Option B: Pull Request (For Git Users)

1. **Fork** this repository
2. **Create** a new branch: `git checkout -b paper/NNN-short-title`
3. **Copy** the template: `cp -r papers/_template papers/NNN-short-title`
4. **Write** your paper in `papers/NNN-short-title/index.qmd`
5. **Test** locally: `quarto preview papers/NNN-short-title/index.qmd`
6. **Submit** a Pull Request

### Paper Structure

```
papers/NNN-short-title/
├── index.qmd           # Main paper (REQUIRED)
├── _metadata.yml       # Paper metadata (REQUIRED)
├── requirements.txt    # Dependencies (recommended)
├── references.bib      # Bibliography (if needed)
├── data/               # Data files (< 10MB total)
│   └── your_data.csv
├── figures/            # Pre-generated figures (optional)
└── README.md           # Brief description
```

### Review Criteria

Papers are evaluated on:

1. **Historical Significance** — Does it address an interesting question?
2. **Methodological Clarity** — Is the code well-documented?
3. **Reproducibility** — Does the code run?
4. **Critical Engagement** — Does it reflect on the methods used?

We do **not** require:
- Peer review (we use editorial gatekeeping)
- Perfection (papers can be updated post-publication)

### Timeline

| Stage | Duration |
|-------|----------|
| Initial check | ~1 week |
| Technical review | 1-2 weeks |
| Editorial review | 1-2 weeks |
| **Total** | **3-5 weeks** |

---

## Updating a Published Paper

### Minor Updates (v1.0 → v1.0.1)

For typo fixes, dependency updates, or small clarifications:

1. Submit a Pull Request with changes
2. Update the version number in `_metadata.yml`
3. Add entry to Version History table

### Major Updates (v1.0 → v1.1 or v2.0)

For new analysis, additional data, or significant revisions:

1. Submit a Pull Request with changes
2. Update version number and changelog
3. Editors will review and may create a new Zenodo release

---

## Contributing to Infrastructure

### Website Issues

Found a bug? Have a feature request?

1. Check [existing issues](https://github.com/Working-Papers-in-Critical-Search/home/issues)
2. Open a new issue with a clear description

### Code Contributions

Want to improve the website or tooling?

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally with `quarto preview`
5. Submit a Pull Request

### Documentation

Improvements to documentation are always welcome:

- Fix typos or unclear language
- Add examples
- Improve the submission guide

---

## Code of Conduct

We are committed to providing a welcoming environment for all contributors. Please:

- Be respectful and constructive
- Focus on the work, not the person
- Assume good faith

---

## Questions?

- **General questions:** Open an [issue](https://github.com/Working-Papers-in-Critical-Search/home/issues)
- **Private matters:** Email the editors directly

---

## Technical Notes

### Local Development

```bash
# Clone the repository
git clone https://github.com/Working-Papers-in-Critical-Search/home.git
cd home

# Install Quarto (https://quarto.org/docs/get-started/)

# Preview the site
quarto preview

# Render the full site
quarto render
```

### Quarto Extensions Used

- None currently (keeping it simple)

### Python Environment

For testing Python papers:

```bash
python -m venv venv
source venv/bin/activate
pip install -r papers/NNN-title/requirements.txt
quarto render papers/NNN-title/index.qmd
```
