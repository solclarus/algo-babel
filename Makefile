LANGS  := c cpp py js
IMAGE  := algo-babel
DOCKER := docker run --rm -v $(PWD):/workspace -w /workspace $(IMAGE)

.PHONY: $(LANGS) test docker help list

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

test:
	@$(DOCKER) sh -c 'for lang in $(LANGS); do make --no-print-directory -C lang/$$lang test; done'

test/%:
	@$(DOCKER) sh -c 'for lang in $(LANGS); do make --no-print-directory -C lang/$$lang test/$*; done'

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
	@echo "make test         Test all algorithms in all languages"
	@echo "make test/<algo>  e.g. make test/fizzbuzz"
	@echo "make <lang>       e.g. make c"
	@echo "make <lang>/<algo> e.g. make c/fizzbuzz"
	@echo ""
	@printf "Languages: $(LANGS)\n"
