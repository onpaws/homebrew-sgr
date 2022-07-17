# Homebrew Tap

The most popular package manager for macOS users is Homebrew.
Homebrew is intended for "applications, not libraries" [see](https://docs.brew.sh/Python-for-Formula-Authors)

# Feature

- `brew install sgr` (or `brew install splitgraph`) gives users a runnable command-line tool.
- Running `brew update && brew upgrade` will update to new `sgr` releases when they're published.

## Antifeatures

- Any version older than the current is not supported°
- Using `splitgraph` as a Python library

° Because Homebrew is distributed as a Git repo, technically its possible to checkout some older commit and install a previously 'current' version.
