# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.25"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.25/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a5b538a758768610333820cf735c04cb1272c28570f875c95fafd621ca2dc56e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.25/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "687f597bd2acdb1f4d7ff13f26dc883f2a391e9f399a664026f40995d80cebcf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.25/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6f94d5665bd8f0b2a3b00ba214890662e1988cfe7b562b89637303752d31a87c"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.25/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1cb11e88626bd75170f57e3d55d2dfc91528ae1de170d099355c1973421e7ddf"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
