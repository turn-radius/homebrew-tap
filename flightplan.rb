# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.11"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.11/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4192d5a8694363f97a162d9eafd4efc410a062f5a0fbea12ba58c2e18a039e09"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.11/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9a7d907732445418137a50b59c8dfa1df47952e232c7fd6bcb51f63eab39b046"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.11/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "233a75024a3452a594f306dd378553bec3622c2f1afd47c2a0768ef6a8e8728f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.11/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5a5e406cd3aa0b6981d2e7e384cfd2dabcfe240f2a152540422fdd03bde5599d"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
