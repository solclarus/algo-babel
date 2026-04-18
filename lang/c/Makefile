include ../common.mk

ALGOS := $(patsubst %/main.c,%,$(wildcard */main.c))

.PHONY: all test $(ALGOS) FORCE

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(CYAN)[C] $@$(RESET)\n"
	@gcc -Wall -std=c11 $@/main.c -o /tmp/$@ && /tmp/$@

test: $(ALGOS:%=test/%)

test/%: FORCE
	@gcc -Wall -std=c11 $*/main.c -o /tmp/$*
	@actual=$$(cat $(PROBLEMS_DIR)/$*/input.txt | /tmp/$*); \
	expected=$$(cat $(PROBLEMS_DIR)/$*/expected.txt); \
	if [ "$$actual" = "$$expected" ]; then \
		printf "$(BOLD)$(CYAN)[C]$(RESET) $* ... $(GREEN)PASS$(RESET)\n"; \
	else \
		printf "$(BOLD)$(CYAN)[C]$(RESET) $* ... $(RED)FAIL$(RESET)\n"; \
		diff <(echo "$$actual") <(echo "$$expected"); \
	fi

FORCE:
