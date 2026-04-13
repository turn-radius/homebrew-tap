# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.4"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.4/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "606c853c7d1973f0a71ff414aa8a6852b39b3c09815c9b7f08bd37cf8ae4f9a7"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.4/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "88962b30bc7ea1d81f0265abd95747e18841c2a1b17827663b76357e3fbe6439"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.4/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ba07280289cff7a1005983adec57680c612049a92f98e7f8bfa88dd34b50f459"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.4/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b0ceb0d9a1a2a3912784ef824a0056e96d227807f40405dc62df64b2e284a3d4"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
