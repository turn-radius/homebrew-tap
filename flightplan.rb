# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.6"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.6/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e66b6356d2025bb3718522dc8cf2638d4e1eb5190da94f8cb383b899926719d7"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.6/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6db5e1e631e2b34ea88c88858251c0defea93b9fb8872412f0c0c29f5bfc4d30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.6/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9b8968647806bb4df7f78c8c9b2ad72a1ff9bab61d7691147fb560034dedf12b"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.6/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b6279b7d5b7f5e07f9bdfd9dd1c4d2197b71ae31184c04cc4c3f61c7209302eb"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
