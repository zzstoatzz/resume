# generate pdf from resume
pdf:
    pandoc --pdf-engine=tectonic \
        -V mainfont="Fira Code" \
        -V fontsize=8pt \
        -H resume_header.tex \
        resume.md \
        -o resume.pdf

# open the generated pdf
open: pdf
    open resume.pdf

# clean generated files
clean:
    rm -f resume.pdf

# watch for changes and regenerate
watch:
    watchexec -e md,tex just pdf