# Compiler and flags
LATEX = pdflatex
BIBTEX = bibtex
MAIN = thesis

# Build targets
.PHONY: all clean distclean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex thesis-style.tex references.bib
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN) || true
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg

distclean: clean
	rm -f $(MAIN).pdf

view: $(MAIN).pdf
	@echo "Opening PDF..."
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(MAIN).pdf; \
	elif command -v open > /dev/null; then \
		open $(MAIN).pdf; \
	else \
		echo "Please open $(MAIN).pdf manually"; \
	fi
