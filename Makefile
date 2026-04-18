LANGS  := c cpp py js
IMAGE  := algo-babel
DOCKER := docker run --rm -v $(PWD):/workspace -w /workspace $(IMAGE)

.PHONY: $(LANGS) helloworld docker-build help

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

docker-build:
	docker build -t $(IMAGE) .

help:
	@echo "make docker-build  Build Docker image (run once)"
	@echo "make <lang>        Run all algorithms in a language"
	@echo "make <lang>/<algo> Run a specific algorithm"
	@echo ""
	@printf "Languages: $(LANGS)\n"
