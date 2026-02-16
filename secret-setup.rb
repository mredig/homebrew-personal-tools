class SecretSetup < Formula
  desc "Interactive helper to set up and update Docker/Podman secrets"
  homepage "https://github.com/mredig/pizza-utils"
  license "MIT"
  head "https://github.com/mredig/pizza-utils.git", branch: "main"

  url "https://github.com/mredig/pizza-utils/releases/download/0.0.2/pizza-utils-0.0.2.tar.gz"
  sha256 "5ecbe0ab3b956719e120a35028bf5a5b819c6d485d596bf191168223d3b4065f"
  version "0.0.2"

  def install
    bin.install "secret-setup.py" => "secret-setup"
  end

  test do
    assert_predicate bin/"secret-setup", :exist?
    assert_predicate bin/"secret-setup", :executable?
  end
end
