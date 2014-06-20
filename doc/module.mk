include tools/header.mk

DVIPS     = dvips
PS2PDF    = ps2pdf
LATEX     = latex-mk
MAKEINDEX = makeindex
BIBTEX    = bibtex

.SUFFIXES: .tex .dvi .ps .pdf

.PHONY: pdf ps

ps::

pdf::

all:: pdf

MODULES :=

include $(addsuffix /module.mk, $(addprefix $(MODULE)/, $(MODULES)))
