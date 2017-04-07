CRBIN=crystal
CRFLAGS=--release
TARGET=bin/libgen
INSTALL_PATH?=/usr/local

$(TARGET): deps $(shell find src -type f -name '*.cr')
	mkdir -p bin
	$(CRBIN) build $(CRFLAGS) src/main.cr -o $@

deps: shard.yml
	$(CRBIN) deps install

install: $(TARGET)
	install -d $(INSTALL_PATH)/bin
	install -m 755 $(TARGET) $(INSTALL_PATH)/bin

clean:
	rm -rf .crystal

distclean:
	rm -f $(TARGET)

test: test-lint test-spec

test-lint:
	$(CRBIN) tool format --check src/ spec/

test-spec:
	$(CRBIN) spec

.PHONY: deps install clean distclean test test-lint test-spec
