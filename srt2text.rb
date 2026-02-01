class Srt2text < Formula
  desc "Parse SRT subtitle files and extract text content"
  homepage "https://github.com/mredig/SRT2Text"
  license "MIT"
  head "https://github.com/mredig/SRT2Text.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/SRT2Text/releases/download/0.0.1/srt2text-macos.tar.gz"
    sha256 "REPLACE_WITH_MACOS_SHA256"
  end

  on_linux do
    url "https://github.com/mredig/SRT2Text/releases/download/0.0.1/srt2text-linux.tar.gz"
    sha256 "REPLACE_WITH_LINUX_SHA256"
  end

  def install
    bin.install "SRT2Text"
  end

  test do
    assert_predicate bin/"SRT2Text", :exist?
    assert_predicate bin/"SRT2Text", :executable?
  end
end
