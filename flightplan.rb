# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.7"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.7/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bfb8f67b14a94c6fc7ba08fff88409b7e2fd01213d813f7826ee693668acb526"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.7/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "43ac406c6e35a90b7bb4d597710ed77e8f85ab5ee08e64fe8e06834710396204"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.7/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "adbc42ee62e3c8ac91647590f98c69971bcf120f9e7f6a60b109306aa6cc8fc1"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.7/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "56c9793e0b956b3e5aa43bf895299be9622f83d002327333007ea269909983d1"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
