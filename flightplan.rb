# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.12"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.12/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "211d320ca1e53144bf961f5ec96368335457c3dfb5877fe409e41f51ec17665b"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.12/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "21433f3ed625237df126dc4e7ec27835d273d6c025b842e7dff1d636f72582ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.12/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "600ff8f5eb9ab8b859ce63a05cc6c6f41a1ca086d795c6b5742c96d44eb12069"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.12/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8c34b5ef87f88ec3cd6feb2044438b1b3a04d95b2b4b1355f7c242e5ca01cf01"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
