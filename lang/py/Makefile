include ../common.mk

ALGOS := $(patsubst %/main.py,%,$(wildcard */main.py))

.PHONY: all $(ALGOS)

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(YELLOW)[Python] $@$(RESET)\n"
	@python3 $@/main.py
