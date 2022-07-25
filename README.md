# Homebrew Formula and Tap for Splitgraph CLI

[Homebrew](https://brew.sh/) users can now install `sgr`, the Splitgraph CLI . [Source](#install-from-source) and [binary](#install-a-binary) versions are available.

### Don't use Homebrew?

Consider [other install methods](https://www.splitgraph.com/docs/sgr-cli/installation).

## Install the x86_64 binary

```shell
brew install onpaws/splitgraph/splitgraph-binary
```

The binary is fetched, copied, and linked, which should take a few seconds. This binary works on Apple Silicon via Rosetta.

#### Need to uninstall?

```shell
brew uninstall splitgraph/splitgraph/splitgraph-binary
```

## Install from source

```shell
brew install splitgraph/splitgraph/sgr
```

The source code will be downloaded, compiled, and a CPU native version of `sgr` will be added to your system.
Tip: Apple Silicon users who prefer a CPU-native binary should consider this.

#### Need to uninstall?

```shell
brew uninstall splitgraph/splitgraph/sgr
```

## Caveats

- While you can install both source and binary versions simultaneously, Homebrew will only link (i.e. make available to your `PATH`) one version at a time.
- While the binary is x86_64 architecture only at this time, we have a report of an Apple Silicon/Monterey user installing and using it successfully.
- Note: If you have previously installed `sgr` some other way e.g. pip, please be aware whichever copy appears first on your `PATH` will take precedence.

## Not supported

- Historical versions of `sgr` are not explicitly supported
- Homebrew's `brew install` is strictly for the CLI -- it does not install Python modules by design. If you want to wish to work with the `splitgraph` module in Python, consider [PyPI](https://pypi.org/project/splitgraph).

## Contributing / Issues

Feedback is welcome via [GitHub issues](https://github.com/splitgraph/homebrew-splitgraph/issues), [email](mailto:support@splitgraph.com), or [Discord](https://discord.com/channels/718534846472912936)
