# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.18"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.18/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7a7ebfa593096d32d3c902121260cc60b16c871fbc25875ab8c9bf8984a9dee1"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.18/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4523db846e7a1ba61d15bf51fe6b6d20dcd30fb917d0c0c81c6f8869584670e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.18/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fdef6ae3e454d9355c785969571d7b704cddd19ad72e879d8f8c93473a6ecb1f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.18/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2d02dccfaec1974aed32b032e7bcf719892f7d1306439a7902257099d6ea3123"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
