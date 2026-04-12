# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.6"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.6/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6e4b2bea851b8021bb569dfbf8e0ad76903261e5c2874c3c99d75c79538466a5"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.6/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d32d86dc984e9ac3187495b14f796d172e14b2c955eaea405d5d5db78e64f1ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.6/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "982a57117c5c14e4747e6105d632d1db457b1b8be97303548a3de4bcbf691182"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.6/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "dc20937caf9beb25958c789826f987479df748274c03061e6880911141d30e40"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
