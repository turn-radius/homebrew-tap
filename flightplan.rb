# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.18"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.18/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1117fd59c6f7a69736bae2b2e31defcb91d02f38a747c6967cbc8577fb2ea7cb"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.18/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a9d2482b5680a17ed8a41c6ea86d302019d9c303a092cd06da4f3d52ff6ccb64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.18/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ddfa0b69deeccf258fdc98e1c935e6c96fd9508d9d3bec12f49902008be45631"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.18/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "54d889f2501efebfd9956de20308248bb5e7fd193a63fc78f9c6127d852b2b8f"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
