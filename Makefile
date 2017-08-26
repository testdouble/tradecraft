.DEFAULT_GOAL := build
.PHONY: serve

serve:
	npx -p gitbook-cli gitbook serve ./src ./dist

build: tradecraft.pdf

tradecraft.pdf: ./src/**/*.md
	mkdir -p dist
	npx -p gitbook-cli gitbook pdf ./src ./dist/tradecraft.pdf
