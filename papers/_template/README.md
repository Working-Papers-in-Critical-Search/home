# Paper NNN: Your Title Here

**Author(s):** First Author (Institution)

**Version:** 1.0

**DOI:** [Pending]

## Abstract

Brief abstract here.

## Files

- `index.qmd` — Main paper (Quarto notebook)
- `_metadata.yml` — Paper metadata
- `requirements.txt` — Python dependencies
- `references.bib` — Bibliography
- `data/` — Data files (if < 10MB)

## Running the Code

```bash
# Create environment
python -m venv venv
source venv/bin/activate  # or `venv\Scripts\activate` on Windows

# Install dependencies
pip install -r requirements.txt

# Render the paper
quarto render index.qmd
```

## Data

Describe where data comes from and how to access it.

## License

Text: CC-BY 4.0
Code: MIT (unless otherwise specified)
