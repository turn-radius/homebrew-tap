# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.20"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.20/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "17f32b07e5019f5e2049f1ac74cf25eb48193b88c37f16d72403e25c3c9fb8ef"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.20/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "634e3e2b8de248218728459cdec8c20beec4dc6ed8534b561f73c63bf23744d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.20/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "17f8cc769b37bdc23b9d8dac350d147e8a21e351aa128c56ff5794340fa73872"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.20/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d2af999abe3c16e7ba37c76239e3e804b15dbdd17b067ca805580c48c53bbee0"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
