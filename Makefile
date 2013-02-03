# CI build

GHC ?= $(shell which ghc)
CABAL ?= $(shell which cabal)

.PHONY: install
install:
	$(CABAL) install --with-ghc=$(GHC) --force-reinstalls

.PHONY: ci
ci: install
