include ../common.mk

ALGOS := $(patsubst %/main.cpp,%,$(wildcard */main.cpp))

.PHONY: all test $(ALGOS) FORCE

all: $(ALGOS)

$(ALGOS):
	@printf "$(BOLD)$(BLUE)[C++] $@$(RESET)\n"
	@g++ -Wall -std=c++17 $@/main.cpp -o /tmp/$@ && /tmp/$@

test: $(ALGOS:%=test/%)

test/%: FORCE
	@g++ -Wall -std=c++17 $*/main.cpp -o /tmp/$*
	@actual=$$(cat $(PROBLEMS_DIR)/$*/input.txt | /tmp/$*); \
	expected=$$(cat $(PROBLEMS_DIR)/$*/expected.txt); \
	if [ "$$actual" = "$$expected" ]; then \
		printf "$(BOLD)$(BLUE)[C++]$(RESET) $* ... $(GREEN)PASS$(RESET)\n"; \
	else \
		printf "$(BOLD)$(BLUE)[C++]$(RESET) $* ... $(RED)FAIL$(RESET)\n"; \
		diff <(echo "$$actual") <(echo "$$expected"); \
	fi

FORCE:
