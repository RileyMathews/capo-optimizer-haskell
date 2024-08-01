.PHONY: build
.PHONY: clean

clean:
	rm -rf .build-artifacts dist .hiefiles .hifiles

build:
	mkdir -p dist
	ghc Main.hs -outputdir .build-artifacts/object-files -hidir .hifiles -fwrite-ide-info -hiedir .hiefiles -o dist/main
