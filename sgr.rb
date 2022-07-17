class Sgr < Formula
  desc "Command-line client binary for Splitgraph, a version control system for data"
  homepage "https://www.splitgraph.com"
  version "0.3.10"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/splitgraph/sgr/archive/refs/tags/v0.3.10.tar.gz"
    sha256 "67b02dff03b4e9117c04c3c99ba7bd173c821455b44af92a038118346b70e191"
    
    def install
      bin.install "bin/sgr"
    end
  end

  test do
    assert_match "# Import", shell_output("#{bin}/sgr example splitfile splitgraph/socrata paws/nyc")
    # TODO add a test that actually "uses sgr"
    #   e.g. read a Splitfile? should probably be local only and/or anonymous
    # here's an example from fly.io
    # flyctl_status = shell_output("flyctl status 2>&1", 1)
    # assert_match "Error No access token available. Please login with 'flyctl auth login'", flyctl_status
  end
end
