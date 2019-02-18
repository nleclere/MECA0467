.PHONY: clean nuke 

course: MECA0467.tex
	pdflatex -shell-escape MECA0467.tex

courseReferences: course
	bibtex MECA0467
	pdflatex MECA0467

clean:
	rm -f *~
	rm -f *.out
	rm -f *.log
	rm -f *.aux
	rm -f *.toc
	rm -f *.blg
	rm -f *.bbl
	rm -rf auto
	rm -f */*~
	rm -rf */auto

nuke: clean
	rm -f *.pdf
