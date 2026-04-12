# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.0"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.0/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e7bf56958b8164d629b4c9daaf697e51ec21cb967e8764f86920e856fe93881e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.0/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5003d4c560ed356ef7fbd3291e64a611040e1e186f1f42f61bf7715029c01ce8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.0/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4d26735f4e88a1c841eb8e063cf161b1aede1f10a646f58a15a9528161756778"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.0/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a990a4f84c014a589d7e8d9c3951f6ff65348df25eca0f9ff35c312a5b1a9af6"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
