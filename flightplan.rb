# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.3"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.3/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "63a57464840ca89fe8f7221c6a80b442ef1262884ac3e74279fdbc89aa6fc4b2"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.3/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9ad07252ff9c9789a7b970cb47236e39651225c4e7c9f6b2015887593afee79b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.3/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2628cbffd9e862fe2692c7a4d829cb1e5f3b6551d8f11caec2f9538edd0ec553"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.3/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b2bd120e657d08522ee528d574a11fae9683f57c07b0cb8173cdd0b62f2d3748"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
