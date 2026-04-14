# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.29"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.29/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "39961e1e02a58c9897667781134fac2cdc629105fd08d6cb88b670c93af473b9"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.29/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e8d324ee10d44efb047adb9c529aba2d589b86e005e1240bcba06dc2b2d07ddb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.29/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "69c6ae427c41406f703497dfa6b179dbd66c5ad182649723b9ef5d6755f2a300"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.29/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c833451cb669944a759b05cfea012c111f2fd161688c06148c56a58117796f24"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
