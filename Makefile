CRBIN=crystal
CRFLAGS=--release --no-debug
TARGET=bin/libgen
INSTALL_PATH?=/usr/local
SOURCES=$(shell find src -type f -name '*.cr')
LIB_EXAMPLES=$(shell find examples -type f -name lib.yml -o -name lib.json)

$(TARGET): deps $(SOURCES)
	mkdir -p bin
	$(CRBIN) build $(CRFLAGS) src/main.cr -o $@

deps: lib/crystal_lib

lib/crystal_lib: shard.yml
	$(CRBIN) deps install

install: $(TARGET)
	install -d $(INSTALL_PATH)/bin
	install -m 755 $(TARGET) $(INSTALL_PATH)/bin

clean:
	rm -rf .crystal .shards lib

distclean:
	rm -f $(TARGET)

test: test-lint test-spec test-integration

test-lint:
	$(CRBIN) tool format --check src/ spec/

test-spec: deps
	$(CRBIN) spec

test-integration: deps $(TARGET)
	for lib in $(LIB_EXAMPLES) ; \
	do \
		$(TARGET) $$lib \
		&& git diff --exit-code `dirname $$lib` \
		|| exit 1 ; \
	done \
	&& $(CRBIN) spec spec/integration/*.cr

.PHONY: deps install clean distclean test test-lint test-spec test-integration
