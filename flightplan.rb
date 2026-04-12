# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.2"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.2/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f877f177dab2b948caeed013db27cb6eb7bcd59614f460a0633e016589541f75"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.2/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "38bc5ff326a03bae083bd52983f01b6914cbe4afe0f2360a18a1191a9b30b768"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.2/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2d768aa05d2792cb6a093451b8c0534d141ed01bfd83ad0197b403660b13fce8"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.2/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "943f42000ad2c795756ef9ed99dd8f88a4262b08cb3c401ea5662bf20142c3e0"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
