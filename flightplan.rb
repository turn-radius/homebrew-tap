# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.25"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.25/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "edf6575a3b136ff1353ff136d9618d071cd1f4ee4fadc42cf3de9b2c7dd19223"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.25/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5a8fa1e6b2a886b41593ab04f2245af31a6cb2d33e17e75ec494dbcbdff7b0f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.25/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1ae8668d256f732f9d1d1dafd617215c912d3314fc1a4eecefc7ad430763ee05"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.25/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9e1ece15b6447114bd00a46d2afbd7419f8dbdac72343df3fb2fcb0b3f0bf497"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
