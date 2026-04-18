# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.17"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.17/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "88cdaee41d543f9c01191a78ebdfe5c76deff89e5e4941da8bbc0672574c8efb"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.17/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "db3ce31a2a12d07e869a10bd5671eab2b3e98a3cf44e017545ff34323f9e9eaa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.17/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d17df7e5f22f5241ac6e2a7e9d205e33cc97b44e5557b8bd0e27dfd05bb1db9e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.17/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "53ce9035ea6ccdea1f41eb044e0700be775e684867939ea17bdad1db743df494"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
