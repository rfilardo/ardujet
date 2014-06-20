# This file contains a bunch of make macros that are called in footer_*.mk files
# used to generate targets.  Binaries are generated in a seperate tree so all
# source prerequisites are referenced by absolute paths

# These builds the PDF/DVI targets and LaTeX prerequisites
define PDF_TGT
$(OUTPUT_DIR)/$(1).pdf: $(foreach SRC,$($(1)_SRCS),$(addprefix $(SRCDIR)/$(MODULE)/,$(SRC))) $(OUTPUT_DIR)/.f
	cd $(OUTPUT_DIR) ; export TEXINPUTS=$(SRCDIR)/templates:$$(dir $$<): ; $(LATEX) --pdflatex $$<
endef

define DVI_TGT
$(OUTPUT_DIR)/$(1).dvi: $(foreach SRC,$($(1)_SRCS),$(addprefix $(SRCDIR)/$(MODULE)/,$(SRC))) $(OUTPUT_DIR)/.f
	cd $(OUTPUT_DIR) ; export TEXINPUTS=$(SRCDIR)/templates:$$(dir $$<): ; export LATEX_FLAGS="-output-format dvi" ; $(LATEX) $$<
endef
