# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.5"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.5/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "372568c50feff384504c1d3728157fd32dd565bb4278e1185a4021dbe2df0ece"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.5/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "17d32d1411e39ffe41e4b4b7872f8caf1f80628ce0991d034865edd9948752a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.5/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e9dfd05ea1b51809901dc5f560151cb5bd20ae7e89787cde156a0e403296087f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.5/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fea31b47b480cb6a01041510b2baa65216115859bb03394b508e6987d5711e8e"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
