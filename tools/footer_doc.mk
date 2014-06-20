# Footer used in makefiles located in the "doc/<module>" directories

$(foreach DOC,$(DOCS),$(eval $(call PDF_TGT,$(DOC))))
$(foreach DOC,$(DOCS),$(eval $(call DVI_TGT,$(DOC))))

$(MODULE)_DVI := $(foreach DOC,$(DOCS),$(OUTPUT_DIR)/$(DOC).dvi)
$(MODULE)_PS  := $($(MODULE)_DVI:.dvi=.ps)
$(MODULE)_PDF := $($(MODULE)_DVI:.dvi=.pdf)

# Add to the targets defined in "doc/module.mk"

ps:: $($(MODULE)_PS)

pdf:: $($(MODULE)_PDF)

$(MODULE): pdf
