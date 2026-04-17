# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.4"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.4/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8265e20e9a9542f35f68326b89d0771eb4e7bee713d31683c2d023a76cb9cd63"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.4/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "eef8a4a8d005b89e0ccd9e2226f0471d43e0809fdb71409380693d80dfab3050"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.4/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "098658052490f46a6ed0ddb5850418377028a451f6d4757595a0232a2fac57cf"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.4/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2ea043ba1f54d098829317e5ea75b928693995c585025e12b1af2425b1827364"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
