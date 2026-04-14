# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.20"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.20/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "857695eb4068bd110c6acf6fa7d8739ba9fc74b9aa25696c0c2a921af5e9ae33"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.20/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ce799a5415c28e36c7cb5ebbde770312e6e8bdc672ff4a161aa24d4db85a4034"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.20/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f4a8a969a1622b6d928816d033a69c7cb3dcc2d60b0dd1e1bf9c0ecd1fafbb3f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.20/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3b323157d0be56edaa1dc0d9c36954a4f6093759f3253366d2af487b2959310b"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
