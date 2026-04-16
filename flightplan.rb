# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.1"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.1/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e5d8c9bce6ebc389b8155cc40999103ff6541558a65a54fd1604fea0b0449560"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.1/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0f29e331e22ee70ccabf7789ac894ab0a3309cc0329d0f9f52fcde42f075f618"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.1/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "645f1934ed2c15a178fd1d4a61c5e343d9620677c73fa34974355b384ba31e35"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.1/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e50f35c525e898ce455f39dea8624313808ebc71361eee7a658250c28db37248"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
