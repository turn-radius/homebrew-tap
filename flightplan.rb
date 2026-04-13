# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.13"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.13/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "172f798543845289f13a3ba2ec031b3667a0e2cffd71408d7731b12fb1595fa0"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.13/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2023a5224e2601d0c357d6b7eab7416866aa25122d26c6fe2474c9a6c4083701"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.13/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e6976cb4c4ce7330e14c569994824c617bcd514f7109d91951f3f72313f1ea59"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.13/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5ebaa75b6a21ec289dee98a3938c1574b4d8dd8006fce7bfd492a0f34032f98c"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
