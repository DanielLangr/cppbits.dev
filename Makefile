# Makefile for cppbits.dev

ASCIIDOCTOR = asciidoctor

# Source files
ROOT_SOURCES = index.adoc
POST_SOURCES = $(wildcard posts/*.adoc)

# Include files (dependencies)
INCLUDES = include/attributes.adoc include/copyright.adoc

# Output files
ROOT_HTML = $(ROOT_SOURCES:.adoc=.html)
POST_HTML = $(POST_SOURCES:.adoc=.html)

ALL_HTML = $(ROOT_HTML) $(POST_HTML)

.PHONY: all clean

all: $(ALL_HTML)

# Rule for root directory
%.html: %.adoc $(INCLUDES)
	$(ASCIIDOCTOR) $<

# Rule for posts directory
posts/%.html: posts/%.adoc $(INCLUDES)
	$(ASCIIDOCTOR) $<

clean:
	rm -f $(ALL_HTML)
