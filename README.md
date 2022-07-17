# Homebrew Tap for `sgr`

Intended for Homebrew users who might prefer it to [other install methods](https://www.splitgraph.com/docs/sgr-cli/installation).

# How to use

This tap installs the binary version of `sgr`.

First, make sure you have [Homebrew](https://brew.sh/) installed.

From a shell, run:

```shell
brew tap onpaws/sgr
brew install onpaws/sgr/sgr
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
