.PHONY: serve

bootstrap:
	./.paket/paket

deps:
	./.paket/paket.exe install
	dotnet restore

init: bootstrap deps

build:
	dotnet build

run:
	dotnet run

serve: build run

all: init build
