# Included by all project makefiles to ensure that the project directory structure
# is replicated under the build directory.  All generated files are to be placed
# into the build directory

MAKEFILES := $(filter-out tools/%,$(MAKEFILE_LIST))

MODULE := $(patsubst %/,%,$(dir $(word $(words $(MAKEFILES)), $(MAKEFILES))))

OUTPUT_DIR := $(BUILD_DIR)/$(MODULE)

# Use a '.f' file to ensure all project directories are created.
$(OUTPUT_DIR)/.f:
	@if !([ -e $@ ]); then ( mkdir -p $(patsubst %/.f,%,$@) ; touch $@ ); fi
