# Homebrew Tap for `sgr`

Intended for Mac Homebrew users. [Other install methods](https://www.splitgraph.com/docs/sgr-cli/installation) are available.

# How to use

This tap installs the binary multifile version of `sgr`.

First, make sure you have [Homebrew](https://brew.sh/) installed.

From a shell, run:

```shell
brew tap onpaws/splitgraph
brew install onpaws/splitgraph/sgr
```

You should see something similar to:

```
==> Summary
🍺  /usr/local/Cellar/sgr/0.3.10: 153 files, 42.3MB, built in 3 seconds
```

Note: If you have previously installed `sgr` some other way e.g. pip, be aware whichever copy appears first on your `PATH` is what will run.

## Antifeatures

- Any version older than the current is not supported°
- Using `splitgraph` as a Python library ([rationale](https://docs.brew.sh/Python-for-Formula-Authors))

° Because Homebrew is distributed as a Git repo, technically its possible to checkout some older commit and install a previously 'current' version.
