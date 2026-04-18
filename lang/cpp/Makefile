include ../common.mk

ALGOS := $(patsubst %/main.cpp,%,$(wildcard */main.cpp))

.PHONY: all $(ALGOS)

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(BLUE)[C++] $@$(RESET)\n"
	@g++ -Wall -std=c++17 $@/main.cpp -o /tmp/$@ && /tmp/$@
