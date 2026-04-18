include ../common.mk

ALGOS := $(patsubst %/main.js,%,$(wildcard */main.js))

.PHONY: all $(ALGOS)

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(GREEN)[JavaScript] $@$(RESET)\n"
	@node $@/main.js
