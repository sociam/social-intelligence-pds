
pds.pdf: pds.tex
		sed s/“/\`\`/g pds.tex > pds-out1.tex
		sed s/”/\'\'/g pds-out1.tex > pds-out2.tex
		sed s/’/\'/g pds-out2.tex > pds-out3.tex
		sed s/“/\`\`/g pds.bib > pds-out.bib
		sed s/”/\'\'/g pds-out.bib > pds-out2.bib
		sed s/’/\'/g pds-out2.bib > pds-out3.bib
		mv pds-out3.bib pds-unquoted.bib
		bibtex pds
		pdflatex pds-out3.tex
		bibtex pds
		pdflatex pds-out3.tex
		mv pds-out3.pdf pds.pdf
