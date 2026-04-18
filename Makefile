LANGS  := c cpp py js
IMAGE  := algo-babel
DOCKER := docker run --rm -v $(PWD):/workspace -w /workspace $(IMAGE)

.PHONY: $(LANGS) docker help list

.DEFAULT_GOAL := helloworld

$(LANGS):
	@$(DOCKER) make --no-print-directory -C lang/$@ all

helloworld: $(LANGS:%=%/helloworld)

c/%:
	@$(DOCKER) make --no-print-directory -C lang/c $*

cpp/%:
	@$(DOCKER) make --no-print-directory -C lang/cpp $*

py/%:
	@$(DOCKER) make --no-print-directory -C lang/py $*

js/%:
	@$(DOCKER) make --no-print-directory -C lang/js $*

list:
	@printf "%-12s %s\n" "LANGUAGE" "ALGORITHMS"
	@printf "%-12s %s\n" "--------" "----------"
	@for lang in $(LANGS); do \
		algos=$$(ls -d lang/$$lang/*/  2>/dev/null | xargs -I{} basename {} | tr '\n' ' '); \
		printf "%-12s %s\n" "$$lang" "$$algos"; \
	done

docker:
	docker build -t $(IMAGE) .

help:
	@echo "make              Run helloworld in all languages"
	@echo "make list         List all available algorithms"
	@echo "make <lang>       e.g. make c"
	@echo "make <lang>/<algo> e.g. make c/fizzbuzz"
	@echo ""
	@printf "Languages: $(LANGS)\n"
