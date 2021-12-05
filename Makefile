TARGET=evilginx
PACKAGES=core database log parser

.PHONY: all
all: build

build:
	@go build -o ./Downloads/$(TARGET) -mod=vendor

clean:
	@go clean
	@rm -f ./Downloads/$(TARGET)

install:
	@mkdir -p /Downloads/share/evilginx/phishlets
	@mkdir -p /Downloads/share/evilginx/templates
	@cp ./phishlets/* /Downloads/share/evilginx/phishlets/
	@cp ./templates/* /Downloads/share/evilginx/templates/
	@cp ./Downloads/$(TARGET) /Downloads
