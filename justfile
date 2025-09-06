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

# check spelling in markdown files
spell:
    uv tool run codespell *.md covers/*.md

# run pre-commit checks on all files
check:
    uv tool run pre-commit run --all-files