# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.12"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.12/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7dac77ad707778bd63a0e85da066dd7fdd792fc1a818b11cb650a86bccced1e3"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.12/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1718f29b893866ed4b8107192d34895e4387c9ff31f562b97c6399faaabbdef5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.12/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "15d15b4034c588396b78ad9dd67d21bddd0e1f97aa9ad7d19f2e5ac973163d0c"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.12/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "84415a8b56645697806d6c573e6288272999490617691d90de130c2436b9cd87"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
