# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is **cppbits.dev**, a static website for C++ tutorials written in AsciiDoc format. The site is deployed to GitHub Pages at cppbits.dev.

## Build and Preview

The site uses Asciidoctor to convert `.adoc` files to HTML.

**Install Asciidoctor:**
```bash
gem install asciidoctor
```

**Build all files locally:**
```bash
asciidoctor index.adoc
asciidoctor posts/*.adoc
```

**Build a single post:**
```bash
asciidoctor posts/260114_move_semantics_explained.adoc
```

The GitHub Actions workflow (`.github/workflows/publish.yml`) automatically builds and deploys on push to master.

## Content Structure

- `index.adoc` - Main landing page with table of contents
- `posts/*.adoc` - Individual tutorial posts (naming: `YYMMDD_title.adoc`)
- `include/attributes.adoc` - Shared AsciiDoc attributes (styling, syntax highlighting, etc.)
- `include/copyright.adoc` - Copyright footer included in all pages
- `stylesheets/ubuntu-custom.css` - Custom styling based on Ubuntu theme

## Writing Posts

Posts should:
1. Set `:rootdir: ..` to properly resolve includes
2. Include `{rootdir}/include/attributes.adoc` for consistent styling
3. Include `{rootdir}/include/copyright.adoc` at the end
4. Use `[source]` blocks for C++ code (syntax highlighting is preconfigured)

Example post header:
```asciidoc
= Post Title
Daniel Langr
:revdate: January 2025
:rootdir: ..
include::{rootdir}/include/attributes.adoc[]
```

After creating a new post, add a link to it in `index.adoc` under the Contents section.
