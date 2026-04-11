# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.1.0/flightplan_darwin_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1a4849e5889497c1d93bd8eae95c78061bac3b0b00b403b82dc3032732aaf901"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.1.0/flightplan_darwin_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ac511947617cb8b8a69cad3d9a176b9e308256b1e5386754ffa978d2c531c70c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.1.0/flightplan_linux_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f85f3819bbd8476a8afbaeafaec0affea115cc4d0bb8769a967cf3040ee94922"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.1.0/flightplan_linux_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "dc432dad2664484c594756e76cf6b27c77a4904ca82947d4ea4c0970dc0d0023"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--help"
  end
end
