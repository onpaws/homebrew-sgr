class SgrBinary < Formula
  desc "Command-line client binary tap for Splitgraph, a version control system for data"
  homepage "https://www.splitgraph.com/docs/sgr-advanced/getting-started/introduction"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/splitgraph/sgr/releases/download/v0.3.10/sgr-osx-x86_64.tgz"
    sha256 "0d8a8d16fe885d59aa8f027b546c0d29c7fa04cbb99fc3d6a1968cf1d011e740"
    
    def install
      bin.install Dir["*"]
    end
  end

  test do
    sgr_status = shell_output("#{bin}/sgr cloud login --username homebrewtest --password correcthorsebatterystaple")
    
    expected_output = <<~EOS
      error: splitgraph.exceptions.AuthAPIError: {"error_code":"INVALID_CREDENTIALS","error":"Invalid username or password"}
    EOS
    
    assert_equal expected_output, sgr_status
  end
end
