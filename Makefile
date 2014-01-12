pdf:aartfaac_RT_img.tex ref.bib
	make -i clean
	pdflatex aartfaac_RT_img
	bibtex aartfaac_RT_img
	pdflatex aartfaac_RT_img
	pdflatex aartfaac_RT_img
#	open aartfaac_RT_img.pdf
	
clean: 
	rm aartfaac_RT_img.pdf
	rm aartfaac_RT_img.log
	rm aartfaac_RT_img.llt
	rm aartfaac_RT_img.aux
	rm aartfaac_RT_img.blg
	rm aartfaac_RT_img.bbl

figs: *.m
	matlab -nodesktop -noFigureWindows -nosplash plt*.m
