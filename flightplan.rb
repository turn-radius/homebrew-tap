# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.2"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.2/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "072e593741b16d0f03c445d6c29b1969722941dfbec7ab831bc09ae410e74cd2"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.2/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "614339b18f6a5212a92ab881d1ab1cd580f87849534552e2dbb7e9451145bb9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.2/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c56e19883ba5ba85feeb76d63d943039bfa347539516063be4219443830015fe"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.2/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f6fbe5b514c10a8d54d3afdd97a5bb716c966746624ea15f0c44842126016aa6"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
