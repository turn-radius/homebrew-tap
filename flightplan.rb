# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.26"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.26/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "aad0dc9a13a47dd5cf19541fd0ef6c7400393fe3d134065250e6f63644dc1492"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.26/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "23bcb9ac798bb4cc02e27be67af884f0dc66c98ab1d0dc2f3d2fda742aee6418"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.26/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "34e25bbe116760ece87381ef7df2c9bf2125aedfd30b7e665d14048ea5970637"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.26/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fdbeb6fa71f19b29954270961c3065c984a2f28779fe4fb6b7d4b99ec6a9c9d9"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
