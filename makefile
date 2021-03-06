target=paper
all:
	#pdflatex ${target} && bibtex ${target} && makeglossaries ${target} && pdflatex ${target} && pdflatex ${target}
	pdflatex ${target} && bibtex ${target} && pdflatex ${target} && pdflatex ${target}
	#pdflatex ${target} && biber ${target} && pdflatex ${target} && pdflatex ${target}



clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.bfc
	rm -f *.run.xml
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.glsdefs
	rm -f *.ilg
	rm -f *.ind
	rm -f *.ist
	rm -f *.log
	rm -f *.toc
	rm -f *.out
	rm -f ${target}.pdf
