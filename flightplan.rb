# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.16"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.16/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9aeaffe354dade74bbaf750d0ec26f5b07965fde0eddcd6a6c2bc97fa0358426"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.16/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e9e8115c02abfc5f2c35f170a846b0c9b403dc78b173e242a2e6a07c18bd77f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.16/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d3a888daa6a107d6f0f7b86681c81973a7911ec04e58a6ea97c80fcebec16901"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.16/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fbeeba0279e65f8e1a94dfb63a68fc1b7dae7b3f7c633d417b24ea547c27894e"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
