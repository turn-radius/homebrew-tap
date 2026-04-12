# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.0/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5e246f49afd30572fe053a52d865a26e60da3898dcc3cf1000fcf0d2d27ee8a8"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.0/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8af833ff5a2472f9d8e95fb9c4aefdbf601ead15b84d79fc99248d69b7323b48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.0/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a0f738baa7d8fd65b748be6422590a83121eb76972d214800b8e1e2143eb72f2"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.5.0/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6695033a3ec874a340de3a9b790cc67444623cc08dabc6f10e2e670e20dc6c5a"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
