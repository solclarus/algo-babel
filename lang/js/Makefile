include ../common.mk

ALGOS := $(patsubst %/main.js,%,$(wildcard */main.js))

.PHONY: all test $(ALGOS) FORCE

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(GREEN)[JavaScript] $@$(RESET)\n"
	@node $@/main.js

test: $(ALGOS:%=test/%)

test/%: FORCE
	@actual=$$(cat $(PROBLEMS_DIR)/$*/input.txt | node $*/main.js); \
	expected=$$(cat $(PROBLEMS_DIR)/$*/expected.txt); \
	if [ "$$actual" = "$$expected" ]; then \
		printf "$(BOLD)$(GREEN)[JavaScript]$(RESET) $* ... $(GREEN)PASS$(RESET)\n"; \
	else \
		printf "$(BOLD)$(GREEN)[JavaScript]$(RESET) $* ... $(RED)FAIL$(RESET)\n"; \
		diff <(echo "$$actual") <(echo "$$expected"); \
	fi

FORCE:
