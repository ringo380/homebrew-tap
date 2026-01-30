# Homebrew Tap for Inferno AI

Official Homebrew formulae for [Inferno AI](https://github.com/ringo380/inferno) - an enterprise AI/ML model runner with automatic updates and real-time monitoring.

## Installation

```bash
brew tap ringo380/tap
brew install inferno-ai
```

Or install directly:

```bash
brew install ringo380/tap/inferno-ai
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `inferno-ai` | Enterprise AI/ML model runner |

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
brew services start inferno-ai
```

## Documentation

See the [main repository](https://github.com/ringo380/inferno) for full documentation.

## License

MIT OR Apache-2.0
