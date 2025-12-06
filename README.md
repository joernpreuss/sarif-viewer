# SARIF Viewer

A simple, client-side viewer for SARIF files.

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

The viewer auto-loads `example.sarif` for demo purposes.

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

## License

MIT
