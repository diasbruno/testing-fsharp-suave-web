.PHONY: serve

bootstrap:
	./.paket/paket

deps:
	./.paket/paket.exe install

init: bootstrap deps

build:
	fsharpc App.fs --staticlink:Suave -r packages/Suave/lib/net461/Suave.dll

run:
	./App.exe

serve: build run

all: init build
