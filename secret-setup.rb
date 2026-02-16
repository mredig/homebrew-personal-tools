class SecretSetup < Formula
  desc "Interactive helper to set up and update Docker/Podman secrets"
  homepage "https://github.com/mredig/pizza-utils"
  license "MIT"
  head "https://github.com/mredig/pizza-utils.git", branch: "main"

  url "https://github.com/mredig/pizza-utils/releases/download/0.0.1/pizza-utils-0.0.1.tar.gz"
  sha256 "d645eeba43b508c46d1d56635961e3d4a2ad9d05f088415620a42b071ff5cb68"
  version "0.0.1"

  def install
    bin.install "secret-setup.py" => "secret-setup"
  end

  test do
    assert_predicate bin/"secret-setup", :exist?
    assert_predicate bin/"secret-setup", :executable?
  end
end
