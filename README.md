# LaTeX Thesis Template

Extends the [University of Alberta](https://www.ualberta.ca/) [Computing Science Graduate Student's Association thesis template](https://sites.google.com/ualberta.ca/csgsa/resources).

## Quickstart

Instructions for compiling the `.tex` files using [Tectonic](https://tectonic-typesetting.github.io/en-US/).

```bash
tectonic --version
# Tectonic 0.1.12
tectonic main.tex
```

For live reloading, the `inotify-tools` package is required.
```bash
tectonic main.tex && inotifywait --quiet --monitor --event close_write --format %e $(ls tex/*.tex main.tex) | while read events; do tectonic main.tex; done
# in another terminal, open it in a pdf
okular ./main.pdf
```

## License

[The Unlicense](LICENSE); This is free and unencumbered software released into the public domain.
