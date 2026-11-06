# IWT course

Materials for the IOTC / IWT managers and scientists courses: case studies, R Markdown notebooks, small input datasets, and Shiny demos built around the IOTC shark executive summaries and the Kobe advice framework.

## Contents

| Path | What it is |
|:---|:---|
| `course-outline.md` | Course aims and case-study stock summaries |
| `timetable.md` | Day-by-day schedule |
| `casestudies-iotc.md` | IOTC case-study notes |
| `iotc/` | Scientific Committee executive summaries and supporting PDFs |
| `Rmd/` | Worked notebooks (life histories, priors, production, JABBA3, FLicc, diagnostics) |
| `data/` | Small prepared inputs (e.g. `bsh-io`) used by the notebooks |
| `shiny/` | Interactive demos (production model, status page) |
| `sessions/` | Session slide decks |
| `nicola/grouper/` | Example Stock Synthesis input files |

## Getting started

1. Clone this repository.
2. Open the relevant `.Rmd` under `Rmd/` in RStudio (or knit the matching `.html` if you only need the rendered notes).
3. Install packages listed at the top of each notebook before running chunks.

Notebooks expect the `data/` folder relative to the repo root. Paths to full SS3 assessment folders on a shared drive are **not** required for the class path that starts from the prepared `data/bsh-io` objects.

## What is not in this repo

Instructor-only notes, SS3 batch/run scripts, knitr caches, deploy credentials, and WIP presentation decks are kept out of the attendee tree.
