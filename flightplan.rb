# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.9"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.9/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "be5d9db8d8a09e9bffbd46c078fbca8bc8384a9d6d3cc5800740e8f2e6d71c62"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.9/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c53d0f1f8bb43e1dc08f2a20d66a0c3149f1f69a1a8c6dc4833cc86bb9ecd450"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.9/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "592ff7c0289479ddcac3d9f6435a596a9072095b11ee160b141571fc885e7015"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.9/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "89937b4662eff7c81b1dd20babc39622f6998374c57029e8658779f35d2ed988"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
