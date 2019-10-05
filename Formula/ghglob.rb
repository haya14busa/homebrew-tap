# This file was generated by GoReleaser. DO NOT EDIT.
class Ghglob < Formula
  desc "ghglob is glob, or more like pattern matcher based on GitHub Actions's Filter pattern spec."
  homepage "https://github.com/haya14busa/ghglob"
  version "0.0.1-test"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/haya14busa/ghglob/releases/download/v0.0.1-test/ghglob_0.0.1-test_Darwin_x86_64.tar.gz"
    sha256 "3067f239d130797f9e0a84c7bf13a65eb947b29f05bcede0452532353e1611bb"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/haya14busa/ghglob/releases/download/v0.0.1-test/ghglob_0.0.1-test_Linux_x86_64.tar.gz"
      sha256 "e62cbac9d9246fbdf6df9648e7e7a9612ee89554a4f15907509e9231d3d4e0e1"
    end
  end

  def install
    bin.install "ghglob"
  end

  test do
    system "#{bin}/ghglob -version"
  end
end
