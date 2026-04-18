# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.23"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.23/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4579fd658a032e28a606aa6cc22e2687cceeedf45b3897d2b7a983fdbb369fa6"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.23/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "795e4ef11415d14a583e1e500d4bb35365c2fd09d3eefb32e3eb2851d891d724"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.23/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6c7b6b0e60387efeb27a5c4d1c00294465f890f89a50dea54d619878ce61e1fa"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.23/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "74bf4ea755c949f61b479e3e169551e498db3a353c9092709ba60fb2b87c2d1b"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
