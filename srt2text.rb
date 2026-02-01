class Srt2text < Formula
  desc "Parse SRT subtitle files and extract text content"
  homepage "https://github.com/mredig/SRT2Text"
  license "MIT"
  head "https://github.com/mredig/SRT2Text.git", branch: "main"

  on_macos do
    url "https://github.com/mredig/SRT2Text/releases/download/0.0.1b2/srt2text-macos.tar.gz"
    sha256 "6b9bbfd9dc46e23f32ec33655d1414ed8dd6f5c9dd07f2857a3637a60672e149"
  end

  on_linux do
    url "https://github.com/mredig/SRT2Text/releases/download/0.0.1b2/srt2text-linux.tar.gz"
    sha256 "64fff1639123bf585bc05d835a4ffa729d372e1d0ea80e37f79da470c065ad28"
  end

  def install
    bin.install "SRT2Text"
  end

  test do
    assert_predicate bin/"SRT2Text", :exist?
    assert_predicate bin/"SRT2Text", :executable?
  end
end