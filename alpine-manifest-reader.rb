class AlpineManifestReader < Formula
  desc "Parse Alpine Linux package manifest files (APKINDEX format v2)"
  homepage "https://github.com/mredig/AlpineManifestReader"
  license "MIT"
  head "https://github.com/mredig/AlpineManifestReader.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/AlpineManifestReader/releases/download/0.0.1b3/alpineManifestReader-macos.tar.gz"
    sha256 "322a09a257b01b23ff41ecd8f8273b111ea8783c81c5fa2ceb481a9f6f6c69bb"
  end

  on_linux do
    url "https://github.com/mredig/AlpineManifestReader/releases/download/0.0.1b3/alpineManifestReader-linux.tar.gz"
    sha256 "a6564b8a774331690545a661cbfdf77f037540603054d7b3f0fd34c8c55c545b"
  end

  def install
    bin.install "AlpineManifestReader"
  end

  test do
    assert_predicate bin/"AlpineManifestReader", :exist?
    assert_predicate bin/"AlpineManifestReader", :executable?
  end
end