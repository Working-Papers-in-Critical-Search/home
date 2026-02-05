# Editorial Publishing Process

A step-by-step guide for editors publishing papers to Working Papers in Critical Search.

## Overview

```
Author submits → Editorial review → Publish → Add to index → Tag release → DOI minted
```

Each paper is a separate GitHub repository. The main site links to papers but doesn't contain them.

---

## Receiving Submissions

### Option A: Author Uses Template (Preferred)

1. Author creates repo from [paper-template](https://github.com/Working-Papers-in-Critical-Search/paper-template)
2. Author writes paper in their own GitHub account
3. Author transfers repo to `Working-Papers-in-Critical-Search` org when ready
4. You receive notification of the transfer

### Option B: Author Emails Materials

1. Author sends notebook + data files
2. Editor creates repo from template
3. Editor adds author's content
4. Editor pushes to org

---

## Editorial Review

Review the submission for:

- [ ] Fits scope (computational methods + historical inquiry)
- [ ] Code/methods are documented
- [ ] Clear what was done and why
- [ ] No obvious errors or issues

Request changes via GitHub Issues or PR comments. This is gatekeeping, not formal peer review.

---

## Publishing a Paper

### Step 1: Ensure Repo is Ready

The paper repo should have:
- `index.qmd` — The paper
- `_quarto.yml` — Quarto config
- `.github/workflows/publish.yml` — Auto-deploy action
- `LICENSE` — CC-BY 4.0

### Step 2: Enable GitHub Pages

1. Go to paper repo → **Settings** → **Pages**
2. Source: **GitHub Actions**
3. Wait for first deploy (~2 minutes)
4. Verify paper renders at `working-papers-in-critical-search.github.io/paper-NNN-title/`

### Step 3: Link to Zenodo

1. Go to [zenodo.org](https://zenodo.org)
2. Log in with GitHub
3. Click username → **GitHub**
4. Find the paper repo
5. Toggle **ON**

### Step 4: Add to Main Site Index

Edit `papers/index.qmd` in the `home` repo:

```markdown
## 2025

**Paper 001:** [Paper Title](https://working-papers-in-critical-search.github.io/paper-001-short-title/)
*Author Name(s)*
Brief description. [[repo](https://github.com/Working-Papers-in-Critical-Search/paper-001-short-title)]
```

Also update `index.qmd` (homepage) Latest Papers section.

Commit and push. The main site rebuilds automatically.

### Step 5: Tag Release and Get DOI

1. Go to paper repo → **Releases** → **Create a new release**
2. Tag: `v1.0`
3. Title: `v1.0 - Initial publication`
4. Click **Publish release**
5. Zenodo automatically archives and mints DOI (~1-2 minutes)
6. Copy DOI from Zenodo
7. Update paper's `index.qmd` with DOI (optional but nice)

---

## Publishing Updates to a Paper

### Minor Updates (typos, fixes)

1. Author submits PR or editor makes changes
2. Merge to main
3. Site auto-rebuilds
4. No new release needed

### Major Updates (new version)

1. Merge changes
2. Create new release: `v1.1` or `v2.0`
3. Zenodo mints new DOI
4. Previous versions remain citable

---

## Checklist: Publishing a New Paper

```
□ Paper repo transferred to org (or created by editor)
□ GitHub Pages enabled (Settings → Pages → GitHub Actions)
□ Site builds and renders correctly
□ Zenodo linked (toggle ON)
□ Paper added to main site papers/index.qmd
□ Paper added to main site index.qmd (Latest Papers)
□ Main site pushed and rebuilt
□ Release tagged (v1.0)
□ DOI minted on Zenodo
□ (Optional) DOI added to paper metadata
□ (Optional) Author notified
```

---

## Quick Commands

### Clone all repos locally

```bash
cd /home/jic823/wpcs
git clone git@github.com:Working-Papers-in-Critical-Search/home.git
git clone git@github.com:Working-Papers-in-Critical-Search/paper-template.git
git clone git@github.com:Working-Papers-in-Critical-Search/paper-000-building-wpcs.git
# ... add new papers as needed
```

### Add a paper to the index

```bash
cd /home/jic823/wpcs/home
# Edit papers/index.qmd and index.qmd
git add -A
git commit -m "Add Paper NNN to index"
git push
```

### Create a release

```bash
cd /home/jic823/wpcs/paper-NNN-title
git tag v1.0
git push origin v1.0
# Then create Release on GitHub web UI, or:
gh release create v1.0 --title "v1.0 - Initial publication"
```

---

## Getting Help

Ask Claude Code to help with any of these steps. Useful prompts:

- "Add Paper 002 to the main site index"
- "Create a new paper repo for [title] by [author]"
- "Tag a v1.1 release for Paper 001"
- "Check if all papers are linked correctly"

---

## Repository Map

| Repo | Purpose | URL |
|------|---------|-----|
| `home` | Main website | [github](https://github.com/Working-Papers-in-Critical-Search/home) |
| `paper-template` | Template for new papers | [github](https://github.com/Working-Papers-in-Critical-Search/paper-template) |
| `paper-000-*` | Paper 000 | [github](https://github.com/Working-Papers-in-Critical-Search/paper-000-building-wpcs) |

Add new paper repos to this table as they're published.
