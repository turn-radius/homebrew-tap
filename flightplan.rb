# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.29"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.29/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "924a5320186c05a95723e547ea1e0f1b87f74bbef05ea80b185b2ac7537d99cc"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.29/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ab087bd0836be78fc0b61f8834ea71a424ee67e8171564b812576ff49f25ab77"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.29/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d71f33b5557c416bf2c3c1bbe5c6e26642f930315756ffa32b7488e1b8226391"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.29/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "dcc66d5a7617c28c1a7f4cbddd7240866133faf27fe19c13d9eb1bedbb6c45ad"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
