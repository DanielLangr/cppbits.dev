# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is **cppbits.dev**, a static website for C++ tutorials written in AsciiDoc format. The site is deployed to GitHub Pages at cppbits.dev.

## Build Commands

The site uses Asciidoctor to convert `.adoc` files to HTML.

**Install Asciidoctor:**
```bash
gem install asciidoctor
```

**Build everything:**
```bash
make
```

**Build a single file:**
```bash
asciidoctor articles/move/introductory_example.adoc
```

**Clean generated HTML:**
```bash
make clean
```

The GitHub Actions workflow (`.github/workflows/publish.yml`) automatically builds and deploys on push to master.

## Content Structure

- `index.adoc` - Main landing page
- `articles/` - Tutorial content organized by topic (e.g., `articles/move/`)
- `include/attributes.adoc` - Shared AsciiDoc attributes (styling, syntax highlighting)
- `include/copyright.adoc` - Copyright footer included in all pages
- `stylesheets/ubuntu-custom.css` - Custom styling based on Ubuntu theme

## Writing Articles

Articles should:
1. Set `:rootdir:` relative to the include directory (e.g., `../..` for `articles/topic/file.adoc`)
2. Include `{rootdir}/include/attributes.adoc` for consistent styling
3. Include `{rootdir}/include/copyright.adoc` at the end
4. Use `[source]` blocks for C++ code (syntax highlighting via highlight.js is preconfigured)

Example article header:
```asciidoc
= Article Title
Daniel Langr
:rootdir: ../..
include::{rootdir}/include/attributes.adoc[]
```

After creating a new article or section, add a link to it in the appropriate index file.
