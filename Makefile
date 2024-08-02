.PHONY: build
.PHONY: clean
.PHONY: test

clean:
	rm -rf .build-artifacts dist .hiefiles .hifiles

build:
	mkdir -p dist
	ghc -isrc src/Main.hs -outputdir .build-artifacts/object-files -hidir .hifiles -fwrite-ide-info -hiedir .hiefiles -o dist/main

test:
	ghc -isrc -itest test/Spec.hs -outputdir .build-artifacts/object-files -hidir .hifiles -fwrite-ide-info -hiedir .hiefiles -o dist/test
	dist/test
