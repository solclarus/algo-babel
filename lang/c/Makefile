include ../common.mk

ALGOS := $(patsubst %/main.c,%,$(wildcard */main.c))

.PHONY: all $(ALGOS)

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(CYAN)[C] $@$(RESET)\n"
	@gcc -Wall -std=c11 $@/main.c -o /tmp/$@ && /tmp/$@
