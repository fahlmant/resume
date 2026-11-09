default: resume

resume: resume.pdf

coverletter: coverletter.pdf

%.dvi: %.tex
	latex $<

%.ps: %.dvi
	dvips -R -Poutline -t letter $< -o $@

%.pdf: %.ps
	ps2pdf $<

# keep intermediate .dvi/.ps files instead of auto-deleting them
.SECONDARY:

.PHONY: default resume coverletter clean veryclean

clean:
	rm *.log
	rm *.dvi
	rm *.ps

veryclean:
	rm *.aux
	rm *.log
	rm *.dvi
	rm *.ps
	rm *.pdf
