# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.19"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.19/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "41e24e9300cc00f7d0ec5da6f11ece597769a149d51ff217d04de1aeb8e2d60e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.19/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "65eb8b57290e20b744da06a4216f7052da84e7e9693e466be679ee6f47d625c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.19/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bd4c59b73d760fd0f0466ac86761f1d62f61818badae90547ee4dbae16009ba7"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.19/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4d4b1b9c6cfbf8681956e85f0399199c27a05bffd4daa50334c8af97d4b003e3"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
