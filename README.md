# SARIF Viewer

[![CI](https://github.com/joernpreuss/sarif-viewer/actions/workflows/ci.yml/badge.svg)](https://github.com/joernpreuss/sarif-viewer/actions/workflows/ci.yml)

A simple, client-side viewer for SARIF files.

**[Live Demo](https://joernpreuss.github.io/sarif-viewer/)**

## What is SARIF?

**SARIF** = **S**tatic **A**nalysis **R**esults **I**nterchange **F**ormat

A standardized JSON format for exchanging results from static analysis tools. Supported by many security scanners and linters:

- **Bandit** (Python Security Linter)
- **Semgrep**
- **ESLint**
- **CodeQL** (GitHub)
- **SonarQube**

## Usage

1. Open `index.html` in a browser
2. Drag & drop a `.sarif` file (or click to upload)

The viewer auto-loads `examples/example.sarif` for demo purposes.

### URL Parameter

Load a specific SARIF file via URL:

```
index.html?file=path/to/results.sarif
```

See `usage-example.sh` for a working example.

Use cases:
- **CI integration**: Generate link to hosted SARIF after pipeline runs
- **Share links**: Send direct links to specific reports
- **Bookmarks**: Save links to frequently viewed reports

## Files

- `examples/example.sarif` - Demo data with sample Bandit findings
- `examples/self-test.sarif` - Semgrep scan of this viewer (0 findings)

## Features

- Severity categorization (High / Medium / Low)
- Filter by severity
- Links to documentation
- Fully client-side - no data leaves your browser
- XSS protection via HTML escaping

## Generate SARIF

```bash
# Python (Bandit)
bandit -r src/ -f sarif -o results.sarif

# JavaScript (Semgrep)
semgrep --config auto --sarif -o results.sarif .
```

## Development

Run tests locally:

```bash
# Node.js
npx serve
# Open http://localhost:3000/test/test.html

# Python
python3 -m http.server
# Open http://localhost:8000/test/test.html
```

Tests cover:
- XSS escaping (escapeHtml)
- Path parsing (getFilename)
- Severity mapping (getLevel, getSeverity)
- SARIF file loading

## License

MIT
