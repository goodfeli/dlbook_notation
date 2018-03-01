# Quit on first error
set -e

# Clear out junk
rm -f *aux
rm -f notation_example.ind
rm -f notation_example.toc
rm -f notation_example.bbl

# Create empty settings file if it does not exist
echo "" >> settings.tex
pdflatex notation_example.tex
bibtex notation_example
makeindex notation_example
bibtex notation_example
makeindex notation_example
pdflatex notation_example.tex
pdflatex notation_example.tex
