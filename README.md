<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a>
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/MonashBioinformaticsPlatform/intro-to-python-for-bioinformatics/master)

# Introduction to Python for Bioinformatics

An introductory workshop to teach basic Python with a bioinformatics flavour.

This version was delivered at BioinfoSummer 2017.

Notebooks and associated data files are in `notebooks`, static HTML exported version are in `docs`.

There are currently two main modules:

* A basic introduction to the Python language (`01_Intro`).
* Running BLAST and parsing output, applied to a protein family (`02_Evasins`).

## Running the notebooks

Zero installation method: run the notebooks is to use [mybinder.org](https://mybinder.org/v2/gh/MonashBioinformaticsPlatform/intro-to-python-for-bioinformatics/bioinfosummer2017)

Alternatively, [install Jupyter](http://jupyter.org/install.html), run `jupyter notebook` in the repository directory.

You can run also run a Dockerized version locally like:
```
pip install jupyter-repo2docker
jupyter-repo2docker https://github.com/MonashBioinformaticsPlatform/intro-to-python-for-bioinformatics
```

### Building the static course notes

To export all notebooks to HTML:
```
./build.sh
```

## License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International (CC BY 4.0) License.</a>, expect for images and trademarks that are copyright of their respective owners.
