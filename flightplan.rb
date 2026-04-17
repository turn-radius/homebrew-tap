# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.3"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.3/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6eb954d13b333bbf9782038dfb0b6d0c9f0c5f7bcd45acfb863e983abe3e26d6"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.3/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8d6410e8aa63cab37f274b61e43be9d62fd0064fc70ff4618d1af1fbdc042988"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.3/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a5495f452db3abf8cbac06a70c4214b0bd7ba62d7e0589b61fd93d70bdb65873"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.3/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "482eb8d6cbe6bbb5ba352ba231663769773f72580261f7a8bc708d073531bf2c"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
