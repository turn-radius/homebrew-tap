# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.5"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.5/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "03a47c668ff00030c49dd7218b74f9618c513e628261922d538e65dc4225c01a"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.5/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "01f5e900ce19e4347fc6de23fdcc301de898ae232764f32c3cdfcc16a1a872fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.5/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ffcab908e1664827a0ee26fac110d89496fafa7e307d226678cd029cef05d96f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.5/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "115644da3f795d0c2fd1be591c9d0b62916b636ff0b3be69fc869fc35dc1144b"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
