build:
            mkdir -p .cache/texmf-var;
            env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
              latexmk -interaction=nonstopmode -pdf -xelatex \
              {{env_var('DOCNAME')}}.tex
