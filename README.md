# thesis_manus
Final Paper for CMSC 200C

## Overview

This repository contains a LaTeX thesis manuscript template configured for academic Computer Science writing with strict formatting requirements.

## Formatting Requirements

This thesis template enforces the following academic formatting standards:

### 1. Output Style
- Strictly academic and technical content
- Mathematical formulas rendered correctly using LaTeX math environments

### 2. Prohibited Elements
- **No bullet points**: Itemize environment is disabled
- **No em dashes**: The --- ligature produces an error

### 3. Figures and Tables
All figures and tables must follow this structure:
1. **Introduce** in the preceding paragraph
2. **Caption** placed below the figure/table
3. **Discuss** in the subsequent paragraph

### 4. Heading Hierarchy

The template implements a four-level heading hierarchy:

- **1st Level (Chapters)**: ALL CAPS, CENTERED
- **2nd Level (Sections)**: Title Case
- **3rd Level (Subsections)**: Sentence case
- **4th Level (Subsubsections)**: Sentence case, run-in with paragraph

## Building the Document

### Prerequisites
- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- Make (optional, for using Makefile)

### Build Commands

Using Make:
```bash
make              # Build the PDF
make clean        # Remove auxiliary files
make distclean    # Remove all generated files including PDF
make view         # Open the PDF (platform-dependent)
```

Manual build:
```bash
pdflatex thesis
bibtex thesis
pdflatex thesis
pdflatex thesis
```

## File Structure

- `thesis.tex` - Main thesis document
- `thesis-style.tex` - Custom style file enforcing formatting requirements
- `references.bib` - BibTeX bibliography file
- `Makefile` - Build automation

## Usage Examples

### Proper Figure Usage

```latex
% Introduce the figure
Figure \ref{fig:example} presents the experimental results.

\begin{figure}[htbp]
\centering
\includegraphics[width=0.8\textwidth]{figure-file}
\caption{Description of the figure}
\label{fig:example}
\end{figure}

% Discuss the figure
The figure demonstrates the key findings of the experiment.
```

### Proper Table Usage

```latex
% Introduce the table
Table \ref{tab:results} summarizes the performance metrics.

\begin{table}[htbp]
\centering
\caption{Performance comparison}
\label{tab:results}
\begin{tabular}{lcc}
\hline
Method & Accuracy & Time \\
\hline
A & 95\% & 10ms \\
B & 92\% & 5ms \\
\hline
\end{tabular}
\end{table}

% Discuss the table
The table shows that Method A achieves higher accuracy.
```

### Mathematical Formulas

```latex
Inline math: $E = mc^2$

Display math:
\begin{equation}
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
\end{equation}
```

## Customization

To modify the thesis content:
1. Edit `thesis.tex` for your content
2. Add references to `references.bib`
3. Do not modify `thesis-style.tex` as it enforces required formatting

## License

Academic use only for CMSC 200C.
