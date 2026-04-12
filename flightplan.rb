# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.4"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.4/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8f52fd8ad9d2c9fce389947b3b0b542b9a79bdf42536aefb63ca90deb201e0f3"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.4/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "369363716cfd867348a05f68a3eeba8fb69b0a1e275251e3842462bdb9f83c96"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.4/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "946b8c441b694118a12a1647cc7ba2c98b812d2f82c5d417ad2c7604a9466e84"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.4/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "647be6d3ab2fe917e37dcf61ec2730ace83bdaa68e28eee2ff7d72b4b2dd553d"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
