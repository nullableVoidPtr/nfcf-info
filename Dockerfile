FROM squidfunk/mkdocs-material
RUN apk add pandoc
RUN pip install --no-cache-dir pypandoc mkdocs-bibtex
