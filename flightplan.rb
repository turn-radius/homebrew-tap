# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.5.1"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.1/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f42f1bbf1a87b746db545fe1236800a97dcbdb3dacbaad5e4ce8502c427e30e1"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.1/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3740a36c6ee5b3d953da3e4c3e80e410b96615f869b1fb1008c7f2cb932dd679"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.1/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e1268737a6a12da9947fe237375c3d13ec71e64ceb72e078efe260faecb4d66a"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.1/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b69a47fa65d0a013a7dd9a36af1721eb09015637c1f1d406ea3d129f0d96e64a"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
