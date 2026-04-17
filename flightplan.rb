# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.7"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.7/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8347babb5242e95c071cbbb8c5cfb0d4e442f0ca4855701ab3760c171c1a44d8"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.7/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8482ad70dacfc041f1e1320991c2d313e8bd9b0a87a2741d322875680e652fea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.7/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e7d461a35807ebb50764fc971d94132749846d99cd79fda7ddeef26d5edfbe6a"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.7/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "41a2e07243e36a2029310b696f0584b7515d6c0ea1c18eeff2f14422a533b214"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
