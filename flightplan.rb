# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.8"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.8/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3238ee56701e5b132decaeb5d42f72f232d1401789e1c815d97dc086288f9031"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.8/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fb5731dce7db473a9cf6834c0b6774d42e9fb539971d887178cf4679cb2693a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.8/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "94df9308674efafa1d58432e6231529afbd31d2517222354b7f9d7702960fd74"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.8/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "347b874dfb3edf9fcff7f889c465c5f842a48952e33df4d9f7a82da8b8dfa993"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
