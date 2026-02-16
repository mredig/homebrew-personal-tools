class ContainerSecretSetup < Formula
  desc "Interactive helper to set up and update Docker/Podman secrets"
  homepage "https://github.com/mredig/pizza-utils"
  license "MIT"
  head "https://github.com/mredig/pizza-utils.git", branch: "main"

  url "https://github.com/mredig/pizza-utils/releases/download/0.0.3/pizza-utils-0.0.3.tar.gz"
  sha256 "7e39ee993d7e1dbb39cee06f8bde35126a6d01823ff00ef5257b38e960d5ed66"
  version "0.0.3"

  def install
    bin.install "container-secret-setup.py" => "container-secret-setup"
  end

  test do
    assert_predicate bin/"container-secret-setup", :exist?
    assert_predicate bin/"container-secret-setup", :executable?
  end
end
