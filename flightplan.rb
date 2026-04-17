# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.2"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.2/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2daa2f3bc6491a64033fa5a076b12cf07b16122260513407d7b7f2baf5689f2a"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.2/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f756b845b2e296d224a11b51180d20c7ac681ec6b86607c8c2fd47a8eb8bbd0f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.2/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ba25d43aa5f6fb246914faa7f3033f472f1c2e248571d18bcbc00cdab8c1be5f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.2/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fe038a8bfcae27b85ca346e11a14488812938ac349a3ce0a7dbc7de9805b2b09"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
