class Splitgraph < Formula
  desc "Command-line client binary tap for Splitgraph, a version control system for data"
  homepage "https://www.splitgraph.com"
  version "0.3.10"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/splitgraph/sgr/releases/download/v0.3.10/sgr-osx-x86_64.tgz"
    sha256 "0d8a8d16fe885d59aa8f027b546c0d29c7fa04cbb99fc3d6a1968cf1d011e740"
    
    def install
      bin.install Dir["*"]
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
