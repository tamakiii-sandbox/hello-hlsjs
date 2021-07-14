.PHONY: help server

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	node_modules

node_modules:
	npm install

server:
	npx --no-install http-server -a 0.0.0.0 -p 80 --cors .

clean:
	rm -rf node_modules
