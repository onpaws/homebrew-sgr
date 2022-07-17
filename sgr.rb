class Sgr < Formula
  desc "Command-line client binary for Splitgraph, a version control system for data"
  homepage "https://www.splitgraph.com"
  version "0.3.10"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/splitgraph/sgr/releases/download/v0.3.10/sgr-osx-x86_64"
    sha256 "cc6c2eb74cb71132f22ea7c39125e676a67ea2cc329766005c54c504f9505be9"
    
    def install
      bin.install "sgr"
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
