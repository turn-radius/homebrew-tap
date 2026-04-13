# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.17"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.17/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ebf5ccb09bedd0ad57a68f6048dba4cddc2268f37fdcac454ae20142c52694b9"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.17/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "03972611f9f7d7c5e01ab3df06bd78e32a639b037d1dff00252252765f7d6024"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.17/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "940bd205fd9daaf5499e1ead550a76d1799ebdcbb73b12758a0f3823684778ad"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.17/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5430b74673df2a06b9f9da9999075927f3fa1122d604e3fb47cbe2c1faf885da"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
