#
# Top-level Makefile for ardujet project
#
# Raffaele Filardo
# 20 June 2014
##
SHELL = /bin/sh

SRCDIR    := $(shell pwd)
EXTLIBS   := $(SRCDIR)/lib
BUILD_DIR ?= .
BUILD_DIR := $(BUILD_DIR)/build

ifdef DEBUG
	BUILD_DIR := $(BUILD_DIR)/debug
endif

.PHONY: all clean emacsclean

all::

clean:
	rm -rf $(BUILD_DIR)

emacsclean:
	$(shell find . -name '*~' -exec rm -f '{}' \;)
	$(shell find . \( -type d -a -name auto \) -exec rm -rf '{}' \;)

MODULES = doc src

include tools/common.mk $(addsuffix /module.mk, $(MODULES))
