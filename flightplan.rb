# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.30"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.30/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b88e207a62b4031ae0bb7d7540d87777e9063ab7bc294d4390d1733cc9393f9d"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.30/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0d58a0e1c6812a2b20a760ffbc7abb006e352b58b5cf961699f61139ea981a8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.30/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8f13003210a28d52c1faee8c4c9594339ecfb37d5734ed87185e4e3bfcece21d"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.30/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e5e1bb8c9e86e71d2f7f0bfb062212d29896c62136f397ff47c295e4df30c171"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
