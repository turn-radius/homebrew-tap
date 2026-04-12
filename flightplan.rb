# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.5.2"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.2/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b27d4a4c30c07e9af3b701af284ddfe0d42acdb4f12038e7f13cee2c967e3691"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.2/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e220472d5d90a3919c71ca3545c1bf8887535f23b7d151e6c608ec21028ed4ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.2/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "66c3004182d1dc3749c5e1e8d6009f6083ebff974c4c4f6e1e2872cc64d55b6e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.2/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "073a8d1dde6d55e8d32e1f6f6065afcf51e7d27f8a43faed23246096dad2321b"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
