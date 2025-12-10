# Thesis Formatting Requirements

## Overview

This document outlines the strict formatting requirements for the Computer Science thesis manuscript. All content must adhere to these guidelines.

## 1. Academic and Technical Output

### Content Style
- All output must be strictly academic and technical in nature
- Use formal academic language throughout
- Maintain objectivity and precision in all statements
- Support claims with evidence and citations

### Mathematical Formulas
- All mathematical formulas must be rendered correctly using LaTeX
- Use inline math mode `$...$` for formulas within text
- Use display math mode for standalone equations:
  - `\begin{equation}...\end{equation}` for numbered equations
  - `\begin{align}...\end{align}` for aligned multi-line equations
- Use proper mathematical notation and symbols from amsmath, amssymb packages

## 2. Prohibited Elements

### Bullet Points
- **STRICTLY PROHIBITED**: Do not use `\begin{itemize}...\end{itemize}`
- The template will produce an error if bullet points are attempted
- Alternatives:
  - Use numbered lists with `\begin{enumerate}...\end{enumerate}`
  - Use paragraph text with proper transitions
  - Use descriptive subheadings to organize content

### Em Dashes
- **AVOID**: Em dashes (---) should not be used in academic writing
- Alternatives:
  - Use commas for parenthetical expressions
  - Use semicolons to connect related independent clauses
  - Use parentheses for additional information
  - Use colons to introduce lists or explanations

## 3. Figures and Tables

All figures and tables must follow this three-part structure:

### Part 1: Introduction (Preceding Paragraph)
- Introduce the figure or table in the paragraph BEFORE it appears
- Reference it by label (e.g., "Figure \ref{fig:label}" or "Table \ref{tab:label}")
- Explain what the figure/table presents or shows

Example:
```latex
Figure \ref{fig:results} presents the experimental results from the
performance evaluation. The figure illustrates the relationship between
input size and processing time.
```

### Part 2: Figure/Table with Caption Below
- Place the figure or table immediately after the introduction
- Always place the caption BELOW the figure or table using `\caption{...}`
- Provide a descriptive caption that can stand alone
- Include a label for referencing: `\label{fig:label}` or `\label{tab:label}`

Example:
```latex
\begin{figure}[htbp]
\centering
\includegraphics[width=0.8\textwidth]{results-graph}
\caption{Performance results showing linear scaling with input size}
\label{fig:results}
\end{figure}
```

### Part 3: Discussion (Subsequent Paragraph)
- Discuss the figure or table in the paragraph AFTER it appears
- Interpret the results shown
- Explain significance and implications
- Connect findings to research questions

Example:
```latex
The figure reveals a linear relationship between input size and
processing time. This scaling behavior confirms the O(n) time
complexity of the algorithm. The consistent pattern across all
test cases validates the theoretical analysis.
```

## 4. Heading Hierarchy

The thesis uses a strict four-level heading hierarchy:

### Level 1: Chapters (ALL CAPS, CENTERED)
- Format: `\chapter{CHAPTER TITLE}`
- All text in UPPERCASE
- Centered on the page
- Example: `\chapter{INTRODUCTION}`, `\chapter{METHODOLOGY}`

### Level 2: Sections (Title Case)
- Format: `\section{Section Title in Title Case}`
- Capitalize major words
- Left-aligned
- Example: `\section{Research Questions}`, `\section{Experimental Design}`

### Level 3: Subsections (Sentence case)
- Format: `\subsection{Subsection title in sentence case}`
- Only first word capitalized (plus proper nouns)
- Left-aligned
- Example: `\subsection{Data collection methods}`, `\subsection{Statistical analysis}`

### Level 4: Subsubsections (Sentence case, run-in)
- Format: `\subsubsection{Subsubsection title in sentence case.}`
- Only first word capitalized (plus proper nouns)
- Runs into the paragraph (no line break before paragraph text)
- Must end with a period
- Example: `\subsubsection{Sample selection.} The sample was chosen...`

## 5. Document Structure Best Practices

### Abstract
- Place before table of contents
- Summarize research concisely
- State problem, methods, results, and conclusions

### Table of Contents
- Generated automatically with `\tableofcontents`
- Include list of figures: `\listoffigures`
- Include list of tables: `\listoftables`

### Main Content
- Organize into logical chapters
- Use section hierarchy consistently
- Maintain flow between sections
- Support all claims with evidence

### References
- Use BibTeX for bibliography management
- Place `\bibliography{references}` at the end
- Cite all sources properly using `\cite{key}`
- Use appropriate citation style (default: plain)

## 6. Compilation Instructions

To compile the thesis:

```bash
make              # Build the PDF
make clean        # Remove auxiliary files
make distclean    # Remove all generated files
```

Or manually:
```bash
pdflatex thesis
bibtex thesis
pdflatex thesis
pdflatex thesis
```

Multiple LaTeX runs are necessary to resolve cross-references and citations.

## 7. Validation Checklist

Before submission, verify:

- [ ] No bullet points used (itemize environment)
- [ ] No em dashes used (---)
- [ ] All figures introduced in preceding paragraph
- [ ] All figures have captions below
- [ ] All figures discussed in subsequent paragraph
- [ ] All tables introduced in preceding paragraph
- [ ] All tables have captions below
- [ ] All tables discussed in subsequent paragraph
- [ ] Chapter headings are ALL CAPS, CENTERED
- [ ] Section headings use Title Case
- [ ] Subsection headings use Sentence case
- [ ] Subsubsection headings are run-in with period
- [ ] All mathematical formulas render correctly
- [ ] All citations included in references.bib
- [ ] Document compiles without errors
- [ ] Content is academic and technical in tone
