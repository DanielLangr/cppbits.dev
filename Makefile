# Makefile for cppbits.dev

ASCIIDOCTOR = asciidoctor

# Source files
ROOT_SOURCES = index.adoc
ARTICLE_SOURCES = $(shell find articles -name '*.adoc')

# Include files (dependencies)
INCLUDES = include/attributes.adoc include/copyright.adoc

# Output files
ROOT_HTML = $(ROOT_SOURCES:.adoc=.html)
ARTICLE_HTML = $(ARTICLE_SOURCES:.adoc=.html)

ALL_HTML = $(ROOT_HTML) $(ARTICLE_HTML)

.PHONY: all clean

all: $(ALL_HTML)

# Generic rule for all .adoc files (works for any directory depth)
%.html: %.adoc $(INCLUDES)
	$(ASCIIDOCTOR) $<

clean:
	rm -f $(ALL_HTML)
