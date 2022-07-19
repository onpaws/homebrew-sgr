# Homebrew Formula (and tap) for `sgr`

Intended for Mac Homebrew users.

[Other install methods](https://www.splitgraph.com/docs/sgr-cli/installation) are available.

# What's the difference?

`sgr.rb` is the formula based on compiling source code
`splitgraph.rb` is a tap, which installs a pre-compiled binary.

# How to use the formula

TODO: make this reality

1. Ensure you have [Homebrew](https://brew.sh/) installed.
2. Run `brew install sgr`.

# How to use the tap

The tap installs the binary multifile version of `sgr`.

1. Ensure you have [Homebrew](https://brew.sh/) installed.
2. Run:

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
