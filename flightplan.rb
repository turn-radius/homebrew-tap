# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.5"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.5/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "85b519aede799f5d4aad9d7578085c0e1961ab1809eebd0d565c5951c8af76b8"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.5/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d4a87a7864bd144bd7a15c0aa4d4126f9779c25b4e5d804b3c20d5b2cf84b130"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.5/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "414173a34a3bc8a6318527a9b9e069c6571505a233b445ef1435ceae49496206"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.5/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9bf818dcba983bd1bb54c79329c70b447f1602645c06cda987af8349a2d3d751"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
