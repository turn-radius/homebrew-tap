# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.24"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.24/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "14dfa49e50c7747264de00fcaa564ffd7ddbc18e4b6cfaae2e3baf5127f156af"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.24/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "30b66a3a7d60ede78f92ce6fec783fc30909e61913a56b5c09789fdc3e8c100c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.24/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b97628713b60e79004fd62f0eddda6309aee520462e653f5c1bfac887f6dd52f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.24/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "32797c2b3b3fac65d38c624c66165ff179e03789e2d9bc15c9c55f2015709f74"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
