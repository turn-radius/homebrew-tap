# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.4.1"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.1/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c1e16bcd1263acca33bc40846470c6dbfda150da6ad1cfaaa644428d4d0aaf63"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.1/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f86ec98eab9994b7166dc5b34e40766f9be0f09171576c3c3989c53dd6f3296e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.1/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "99da026f63f45165b955441286db061290646307a2c58a018bbdb657aaad12f7"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.1/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "42324453e9fa3fb940e841bc0eb90b40bee9ce788a25f05a94dae6a5a7048945"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
