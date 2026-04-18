# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.16"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.16/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8544b63740db5bac3f8fe0dd2d475913ee17dfcf375890ac39baaf17fa0f2681"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.16/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "eca6bc8178219e28a2095317f26821a8c8be35232ba56b9aca77d2ccc921d968"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.16/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a4501c2533c4edd9f843d353d0de62f61ca1fc9f26be9919ce1fe95d1075c9b7"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.16/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "67885ffec96e9f96d302aed2e7b95338ccba11c550afaf1dd699d3f600ec50c3"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
