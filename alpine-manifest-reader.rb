class AlpineManifestReader < Formula
  desc "Parse Alpine Linux package manifest files (APKINDEX format v2)"
  homepage "https://github.com/mredig/AlpineManifestReader"
  license "MIT"
  head "https://github.com/mredig/AlpineManifestReader.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/AlpineManifestReader/releases/download/0.0.1/alpineManifestReader-macos.tar.gz"
    sha256 "PLACEHOLDER_MACOS_SHA256"
  end

  on_linux do
    url "https://github.com/mredig/AlpineManifestReader/releases/download/0.0.1/alpineManifestReader-linux.tar.gz"
    sha256 "PLACEHOLDER_LINUX_SHA256"
  end

  def install
    bin.install "alpineManifestReader"
  end

  test do
    assert_predicate bin/"alpineManifestReader", :exist?
    assert_predicate bin/"alpineManifestReader", :executable?
  end
end