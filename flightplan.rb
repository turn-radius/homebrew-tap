# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.1"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.1/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2ae66de51930e745924e5cfee8e18139e9dc0f69916192160c8aec9a393d279d"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.1/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "dc9a970e33a6386379adbeffdcb1225f9cace9500b8fe83e3dcd2c6e6cf8614a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.1/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bda91cc49af1c79409eed50d5c3cd8329e985cfa10fb3b77c299868fe50c0322"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.1/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "64f499f33ce62c8fc09b9e2826dbeece1e57800934e43b8cc55f55ad509a40c0"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
