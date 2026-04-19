# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.27"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.27/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "66dcf27ad7739af689633329b273f11db1b6bbcaf391dc76f99a0a53e0bf4f3b"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.27/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9d29c052677bd466cdaa7bdc0e3d3b333a766d791f4582e9adb85dc723fe603b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.27/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7798fc91a3123ad5847912af9cbe1c455c0553eba05cb93c6f195e506bda2d80"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.27/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "02126850384f34f4af6ce348a8094a6ccd18223293ce9870f714ad4d56d20cfa"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
