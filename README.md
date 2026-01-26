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
alpineManifestReader APKINDEX --package sqlite-static

# Extract version for use in scripts
VERSION=$(alpineManifestReader APKINDEX --package sqlite-static | jq -r '.packageVersion')
```

**Repository:** https://github.com/mredig/AlpineManifestReader

## Usage

After installation, tools are available as executables. Use `--help` for detailed usage:

```bash
alpineManifestReader --help
```

Refer to each tool's repository for detailed documentation and examples.

## Contributing

This is a personal tap, but suggestions and bug reports are welcome via GitHub issues on the respective tool repositories.

## License

Individual tools are licensed as specified in their repositories (typically MIT).