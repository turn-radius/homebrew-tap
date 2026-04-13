# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.9"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.9/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d4dae2a5ebc3df6d4d32e13cccf976201a6591bb6c6bb99f5ede6796c9866abe"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.9/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0986300958427c51b7f0d21b936f1428615bc661ac5121c3263f5250344ea3c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.9/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c5922b1f76b56eaf43f8ebaa6c7d0ec70da7d0db8fdbd4df724fe57255a6502d"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.9/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "81f70f1049e60633378ee4a81af11f6aff6f1fa2d9d3557bb88d1bfbc4335d5c"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
