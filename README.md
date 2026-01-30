# Homebrew Tap for Inferno AI

Official Homebrew formulae for [Inferno](https://github.com/ringo380/inferno) - an enterprise AI/ML model runner with automatic updates and real-time monitoring.

## Installation

```bash
brew tap ringo380/tap
brew install inferno
```

Or install directly:

```bash
brew install ringo380/tap/inferno
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `inferno` | Enterprise AI/ML model runner |

## Usage

After installation:

```bash
# Check version
inferno --version

# List models
inferno models list

# Start API server
inferno serve

# Start as background service
brew services start inferno
```

## Documentation

See the [main repository](https://github.com/ringo380/inferno) for full documentation.

## License

MIT OR Apache-2.0
