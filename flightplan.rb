# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.15"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.15/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "936a101179229d305eac5a7ec4e4c06db39b7ffdb237ed27b8b9ee9b8bbd53ca"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.15/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "05345929925e3474502d14aa72d44d8a463f5803559fc5baeeef3df4d4dfd3a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.15/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "93451bc86da2d315985b3b724ce16a6f3935555b99588dfa1bbdd83e977266b5"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.15/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a09bc6886cb14b8be18b2c96aa678262d05c434c363d0bd95a9f687323c3b81a"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
