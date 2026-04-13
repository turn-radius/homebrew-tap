# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.14"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.14/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "16c09482a219eaf35389ee97353fc080ff48ebf5715418c902a0ac2761e05c3a"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.14/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "aa9d6555e4e04ab957708b570c8b848bf0532289b5799f8455565477932fb948"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.14/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "08dad113c7e749bb1a74d472301902858a0d2be52bc4550eba09ff5a1cc484f6"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.14/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "97c6b3a812752259e0b4262b898aaf4242d1882f0645c3b76a4bfb1e618f4165"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
