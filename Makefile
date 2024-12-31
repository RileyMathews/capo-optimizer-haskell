.PHONY: build
.PHONY: clean
.PHONY: test

clean:
	rm -rf .build-artifacts dist .hiefiles .hifiles .hiedb

build:
	mkdir -p dist
	ghc \
		-isrc src/Main.hs \
		-outputdir .build-artifacts/object-files \
		-fwrite-ide-info \
		-hiedir .hiefiles \
		-o dist/main

test:
	mkdir -p dist
	ghc \
		-isrc \
		-itest test/Spec.hs \
		-outputdir .build-artifacts/object-files \
		-fwrite-ide-info \
		-hiedir .hiefiles \
		-o dist/test
	dist/test

ghciwatch:
	ghciwatch --command "ghci -isrc -itest -fwrite-ide-info -hiedir .hiefiles -hidir .hifiles" --watch src --watch test
