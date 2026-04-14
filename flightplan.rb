# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.27"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.27/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2a807f91dacaaac9ac57fb0c70dced22b4936effad1943f918af1f774ebe8acd"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.27/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "59fd916ea468783ff1c8916622b727a8493574c305238bf3a5cb4937a194753c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.27/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e9309f23578222d8fbc180f1a8e84ab5a89f8d79abf9a1e25aca9cf2718b70bf"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.27/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ec77a41a04142b5c898325865828144d7ea5b4c3a1507242da1096313acd559e"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
