# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.1/flightplan_darwin_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "20e931181a44441c5afcd5640ff4bc7187cb445911a1bee59726220ced67801b"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.1/flightplan_darwin_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ae4be8845a4e0eec98ab2996e7ee996030e5df0f677d6c03a2f335a5e82366d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.1/flightplan_linux_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "30732ef5f015a2f6ee16fbd36ffe17596d4c709dcdadbb3907de49be3052df3a"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.2.1/flightplan_linux_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cac53debc9e887df5e260197a45353da45115a7a3a16dc0d734273969ce60530"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
