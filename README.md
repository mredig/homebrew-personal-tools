# Personal Homebrew Tools

Homebrew tap for personal development and automation tools.

## Installation

Add this tap:

```bash
brew tap mredig/personal-tools
```

## Available Formulae

### alpineManifestReader

Swift-based command-line tool for parsing Alpine Linux package manifest files (APKINDEX format version 2).

**Install:**
```bash
brew install alpine-manifest-reader
```

**Features:**
- Parse APKINDEX files from Alpine Linux repositories
- Extract package metadata (versions, dependencies, checksums)
- JSON output for easy integration with other tools
- Static binary builds with no external dependencies
- Useful for CI/CD pipelines and build automation

**Example usage:**
```bash
# Download APKINDEX
wget -qO- https://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/APKINDEX.tar.gz | \
  tar -xzO APKINDEX > APKINDEX

# Query package info
AlpineManifestReader APKINDEX --package sqlite-static

# Extract version for use in scripts
VERSION=$(AlpineManifestReader APKINDEX --package sqlite-static | jq -r '.packageVersion')
```

**Repository:** https://github.com/mredig/AlpineManifestReader

### SRT2Text

Swift-based command-line tool for parsing SRT (SubRip) subtitle files and extracting text content.

**Install:**
```bash
brew install srt2text
```

**Features:**
- Parse SRT subtitle files
- Extract plain text content (removes timestamps and entry numbers)
- Output to stdout or file
- Clean, readable text output
- Static binary builds with no external dependencies
- Useful for text analysis, transcription processing, and content extraction

**Example usage:**
```bash
# Output to stdout
SRT2Text subtitles.srt

# Save to file
SRT2Text subtitles.srt --txt-output-file output.txt
```

**Repository:** https://github.com/mredig/SRT2Text

## Usage

After installation, tools are available as executables. Use `--help` for detailed usage:

```bash
AlpineManifestReader --help
SRT2Text --help
```

Refer to each tool's repository for detailed documentation and examples.

## Contributing

This is a personal tap, but suggestions and bug reports are welcome via GitHub issues on the respective tool repositories.

## License

Individual tools are licensed as specified in their repositories (typically MIT).