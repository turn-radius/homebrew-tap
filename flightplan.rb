# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.28"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.28/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4d20fb6a5b9af3eec8ed28292a7b5530a81a65cde288c998301ea7156f5b3e9c"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.28/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f16754a9746e3b7528a6bebcfb48e1799412cef36a5020319ffedc35573db358"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.28/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0d3cab9315f55ff23d0fb4c0b0cc50c2a8a6d71573374fc2821b6a2f63aaf1c1"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.28/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "164797537c8846667de8da3983139c22ee6ee6400a4841d71d5372a0dd80dfe1"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
