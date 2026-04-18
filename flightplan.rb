# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.21"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.21/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "609ddd752139111dece7f5fd1a5040b83e3870d8207380cead48afe1a82d66be"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.21/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "11e4596f68e8d1d5ca16dd109a53456aa5694d2110b853b85321171c01fca4ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.21/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "627407525d482a90082019c576a05a12bbe61b9fb0f190f375d7f317ba8f7c4c"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.21/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0c4c52bdbae679a80ef943a870c491b58d4076fca111ccf7c33c291107b0f344"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
