# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.8"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.8/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2d6b95090e0d3ad4835c2349a3b6d23838430f1c7ab2b67876122913ac20b924"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.8/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c1e8c316d5045f2905f309e8ccc85d9ecc51d08d14cd96feedc36b1109581059"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.8/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "59cc3e5edbc1475a486a8890c743c137c65ef57c1dc039e61e20c2b674e4a388"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.8/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fa7e490abbbef49bae652d0f98dbc429f7caa92f340c72ad24f406d6d1651110"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
