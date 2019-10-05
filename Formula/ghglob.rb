# This file was generated by GoReleaser. DO NOT EDIT.
class Ghglob < Formula
  desc "ghglob is glob, or more like pattern matcher based on GitHub Actions's Filter pattern spec."
  homepage "https://github.com/haya14busa/ghglob"
  version "1.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/haya14busa/ghglob/releases/download/v1.0.1/ghglob_1.0.1_Darwin_x86_64.tar.gz"
    sha256 "79dbf4a149db4c566c641bec1086ab3422cee5a0cd53f43e5aaf4267da435ccd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/haya14busa/ghglob/releases/download/v1.0.1/ghglob_1.0.1_Linux_x86_64.tar.gz"
      sha256 "8b1b73349c20e28f207ea17b979e95b8489d3e3333793c474f1700c68637caf8"
    end
  end

  def install
    bin.install "ghglob"
  end

  test do
    system "#{bin}/ghglob -version"
  end
end
