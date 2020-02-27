FILES = $(shell ls main.tex main.bib tex/*.tex)

build:
	tectonic main.tex
watch: build
	inotifywait --quiet --monitor --event close_write --format %e $(FILES) | while read events; do tectonic main.tex; done
clean:
	rm -f main.aux main.lof main.lot main.out main.run.xml main.toc
	rm main.pdf main.bcf || echo "Already clean"
