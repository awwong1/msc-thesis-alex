# sudo apt install inotify-tools latexmk

FILES = $(shell ls tex/*.tex main.tex main.bib)

build:
	latexmk -pdf main.tex

watch: build
	inotifywait --quiet --monitor --event close_write --format %e $(FILES) | while read events; do latexmk -pdf main.tex; done

clean:
	rm -f *.aux *.lof *.lot *.out *.run.xml *.toc *.bbl *.blg *.dvi *.fdb_latexmk *.fls *.log *.synctex.gz \
		**/*.aux **/*.lof **/*.lot **/*.out **/*.run.xml **/*.toc **/*.bbl **/*.blg **/*.dvi **/*.fdb_latexmk **/*.fls **/*.log **/*.synctex.gz
	rm main.pdf || echo "Already clean"
