# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.0/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "127d98bad3245c355d4ae02595076da2d6a66e39cee304c2ea4941390ca21e51"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.0/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2a582de1246e5af96325e0ba00ad29f440037f10f36edfd5d844c0c0906787a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.0/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cf6fcc54126174352ba3667831f212ea3027abcd4937df4092a6e7a34a13cf24"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.4.0/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a50d84cefe958669ac67b9be126bb9f433c642b50ed05bc78f479827169f4f0e"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
