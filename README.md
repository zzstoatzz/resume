## my resume

- write resume in markdown in `resume.md`
- convert to `resume.pdf` with `pandoc`

```
pandoc --pdf-engine=xelatex -V mainfont="Fira Code" -V fontsize=10pt -H resume_header.tex README.md -o resume.pdf
```

### requirements
- mactex (if not on macOS, please check [pandoc](https://pandoc.org/installing.html))
```
brew install --cask mactex
```
- pandoc
```
brew install pandoc
```