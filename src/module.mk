include tools/header.mk

.PHONY: prog lib

progs::

libs::

all:: progs libs

MODULES :=

include $(addsuffix /module.mk, $(addprefix $(MODULE)/, $(MODULES)))
