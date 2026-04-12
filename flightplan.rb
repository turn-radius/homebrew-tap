# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.3"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.3/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3964658c52bcf08c2c6a114fba2ffdf4b75bc690764fb2e2b226d55dc3500e74"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.3/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4312d22fa38e31453c4de1f1812267a44ac2cc639baf0d70572870c3e69a4126"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.3/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2f23599742264bccc98d279d6c1a015fec7678a537ab7604a22255b2d05dd227"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.3/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "138c8a1fc3bdc54efc96d0d64b0d90a72052ee7ee304a1b11f97cc090929670f"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
