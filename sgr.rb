class Sgr < Formula
  include Language::Python::Virtualenv

  desc "Command-line client for Splitgraph, a version control system for data"
  homepage "https://www.splitgraph.com/docs/sgr-advanced/getting-started/introduction"
  url "https://github.com/onpaws/sgr/archive/refs/tags/v0.3.11-brew2.tar.gz"
  sha256 "2c4ea69f935c80c853211ad85f3253b31c541fad319c2c327895a879110e2665"
  license "Apache-2.0"
  head "https://github.com/onpaws/sgr.git", branch: "master"
  
  depends_on "python@3.10"

  resource "splitgraph" do
    url "https://files.pythonhosted.org/packages/55/43/7426613a4258a3bea07453dc4da4824a3ffffe2bf3cfa26657ae50cffbfd/splitgraph-0.3.10.tar.gz"
    sha256 "6a2937432c8de7e75c323002d3425d9b3d1dac4d162fe3eb0a069b92668c9170"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resources
    poetry = Formula["poetry"].opt_bin/"poetry"
    system poetry, "build", "--format", "wheel", "--verbose", "--no-interaction"
    venv.pip_install_and_link Dir["dist/splitgraph-*.whl"].first
    bin.install_symlink libexec/"bin/sgr"
  end

  def caveats
    <<~EOS
      Some features are powered by sgr Engine [1], which is available as a 
      Docker image [2]. If you want to use these features, please ensure
      Docker is available and follow the install steps [3].
      
      Example projects https://github.com/splitgraph/sgr/tree/master/examples
      Five minute demo https://www.splitgraph.com/docs/sgr-advanced/getting-started/five-minute-demo

      [1] https://www.splitgraph.com/docs/sgr-advanced/architecture/splitgraph-engine
      [2] https://hub.docker.com/r/splitgraph/engine
      [3] https://www.splitgraph.com/docs/sgr-advanced/getting-started/installation#manual
    EOS
  end

  test do
    sgr_status = shell_output("#{bin}/sgr cloud login --username homebrewtest --password correcthorsebatterystaple")
    
    expected_output = <<~EOS
      error: splitgraph.exceptions.AuthAPIError: {"error_code":"INVALID_CREDENTIALS","error":"Invalid username or password"}
    EOS
    
    assert_equal expected_output, sgr_status
  end
end
