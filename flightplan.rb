# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.21"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.21/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0ca1acaab0e8eb58b675e97d392d7992120dc5336b5b8d08b4aaf9b50c50cbcc"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.21/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d9babd62ba65d2c51da84b3fe0744efbe42049d7f3353f22fc388b26d025accf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.21/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "adef9541b4f4e1ac3310e119b8ff7879c6a2821500925c2bf70fce5852b7531c"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.21/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2029cb3dd702ea055bcfe4aacef6622cadc847f78c8190f5e43a8520b625b9b9"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
