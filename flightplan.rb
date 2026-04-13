# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.11"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.11/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "86658fe2ed8597cb2baee8e26f88ff77faf26ddbc73404ef55ed83647c55b853"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.11/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a90fb54b9a7fb846296bb7179ac9574b2e3a6cc046e64be741335dea74cd4ca2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.11/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3f6c68799df6a3f429f598f3b5e3e72d268790bc4c04717070c63031968ca381"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.11/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5bea78ae1e1cd6d2d49be56c2ec818bf24e67b2a0de1342b6461ddc86dc53c40"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
