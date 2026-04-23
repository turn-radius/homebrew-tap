# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.45"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.45/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4670829ceae4e6c73e4ab0e2f1be9e12aa86d3dd04fd1fcfd44f22abdc139e57"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.45/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d79bc49f20efebc5b47ae65e7f9cb8a1a7458b1a9a19024da571b689429a5079"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.45/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 ""
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.45/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 ""
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
