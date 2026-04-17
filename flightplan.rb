# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.9"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.9/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fa8e16997c49a426c36691eae2eab73cde47f4e57eb3110b797dcb794a11338f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.9/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5b26ad8a6451a9bcf06fdc16958f03e203b78d7d4827056f0dc1965514d39889"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.9/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b44724bb12ab8984dc2a822ad11e3cb202c86c1a54fdecea239bb926813c4dd2"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.9/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9549210e25fccd5c141b1235e86544887d1d7f9e8a8751da05c2b5460f46b61c"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
