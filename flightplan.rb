# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.24"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.24/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "986af2ea6d29acbae248c23eb156bf5eed0765f597e8a93dcbe3a3fd4389026c"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.24/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cc448627278321201aff7a6fc3de3c1551140e8c0c8fa65eb85914587d9e91e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.24/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "476a469a5b57a3d35531927bba26b3cb2e1ba99714926099f7219e820317df6e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.24/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ac655ffa708a809bc8ab9e3ab653ae4c20247f82603753cc2643c491c562c5db"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
