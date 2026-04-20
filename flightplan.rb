# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.33"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.33/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3d31ae998943e1f230cecc10cf0e61dc4adcac8335d6ef331300bf42c68159fb"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.33/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "acfa3b3b396013e602a58dfc40ff5a641d7be02fdab8ecf4b010e767fb41acb5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.33/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 ""
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.33/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 ""
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
