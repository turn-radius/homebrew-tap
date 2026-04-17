# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.10"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.10/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "dc5615251bdca335d7166c25ac2ffaaef47d21e41f13a56c44ac824a4c8eda50"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.10/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a1cda6efd8d3e64db9875913714a1b735c9edcd6b4edeb495b34e464a363fb78"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.10/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7bcf6914b98dd81798ff13efc2d4d6b0b721196c0871f9d4432e1b1041bdcb08"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.10/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bbe1191b8b20ccfdbddf83cffe1e1a042c8cf148de26c59fcf5f364bddae7228"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
