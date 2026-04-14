# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.23"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.23/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "60ca4891326389850a18b6fe7ad7ec748edcc3b4f3b0c3d8d0ab5fec4ef721bf"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.23/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "16a718a11a5c6339ed5dc75da4de2af4db7e3b41f1d1586c947cf058205f1363"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.23/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "768b4b032770fa1d8a697f6116ecc83615a33cb96bc9be03cbba2191af27c9e2"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.23/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "972a8bf91cff3b95cac1a2f53a0318736c1e9c752464a90c2eeb1a21f43eaaab"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
