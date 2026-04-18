# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.14"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.14/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "19c99d4cfb6d2a46ebf3a0805ca0b4d81641ca8df72cf94341fd9f1755545bad"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.14/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d634c8dd30463222a644c68d3ac23c1fd0f2ba3f2123dcc4c0e1a0f913e430dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.14/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bc5b38d0abe89e3f89546c3c3646a893d24069d42f094884df4e5dddd71af4f7"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.14/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "21dcdb0dde4221928635c6d8defe275568f3dcbafa313819bf5476a56a348c44"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
