include ../common.mk

ALGOS := $(patsubst %/main.py,%,$(wildcard */main.py))

.PHONY: all test $(ALGOS) FORCE

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(YELLOW)[Python] $@$(RESET)\n"
	@python3 $@/main.py

test: $(ALGOS:%=test/%)

test/%: FORCE
	@actual=$$(cat $(PROBLEMS_DIR)/$*/input.txt | python3 $*/main.py); \
	expected=$$(cat $(PROBLEMS_DIR)/$*/expected.txt); \
	if [ "$$actual" = "$$expected" ]; then \
		printf "$(BOLD)$(YELLOW)[Python]$(RESET) $* ... $(GREEN)PASS$(RESET)\n"; \
	else \
		printf "$(BOLD)$(YELLOW)[Python]$(RESET) $* ... $(RED)FAIL$(RESET)\n"; \
		diff <(echo "$$actual") <(echo "$$expected"); \
	fi

FORCE:
