.PHONY: nasr, nazm

default: nazm

nasr: nasr.pdf
	vupdf $<

nazm: nazm.pdf
	vupdf $<

nasr.pdf: nasr.tex
	xelatex nasr.tex

nazm.pdf: nazm.tex
	xelatex nazm.tex
