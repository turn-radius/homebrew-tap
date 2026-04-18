# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.22"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.22/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6dd3181977559502dcc5cc8da312e4c35a131819304de96fdcbfb45712826373"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.22/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f583b8977f184fe5eb9c00c3aad7d41cbf978143aaf2dbd0a37ef2e0c971f63d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.22/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0029eda6aef20e4b397f4b913407799ce0d36fd99b3bcb22ce8ace6429047d3e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.22/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5f42fb11c3c8c1c87ff325983342378522f93e5b78aacb22f45f6329865713f5"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
