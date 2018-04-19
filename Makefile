LIVRO = TALES_DILMA

all:
	latexmk -xelatex -interaction=nonstopmode LIVRO.tex
	cp LIVRO.pdf ${LIVRO}.pdf
	evince ${LIVRO}.pdf
erros:
	-grep --color=auto "LaTeX Error" LIVRO.log
	-grep --color=auto -A 3 "Undefined" LIVRO.log
copy: 
	-cp ../templates/baruch/LIVRO.tex .
	-cp ../templates/baruch/INPUTS.tex .
	-cp ../templates/baruch/.gitignore .
	-cp ~/texmf/tex/fichatecnica.sty .
texrepair:
	-cp ~/texmf/tex/texrepair.sh .
deep-clean:
	-rm *.sty
	-rm *.cls
clean:
	-rm *aux *~ *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf *.fls *_latexmk LIVRO.pdf
