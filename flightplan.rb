# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.2/flightplan_darwin_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1b7e3868e079ac212ff4bcefad33f1a87cbebb207c1f2096498ed5c25d0be88e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.2/flightplan_darwin_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fbba40a17edb61c5eb9786447de19dd8b35b513cd52e5c1eb4513cb708e0967e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.2/flightplan_linux_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0179e46906380e9b2895461a5c0578ff4550cac6d26d3123a18f2cbc5552ae86"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.2/flightplan_linux_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "225eb366488a0f0e852fec57d1c7885d23276b54a60b39e19d071b49d09d9486"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
