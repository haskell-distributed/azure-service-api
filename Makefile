# CI build

GHC ?= $(shell which ghc)
CABAL ?= $(shell which cabal)

.PHONY: install
install: $(REPOS)
	$(CABAL) install --with-ghc=$(GHC)

.PHONY: ci
ci: install test

.PHONY: test
test:
	$(CABAL) configure --enable-tests
	$(CABAL) build
