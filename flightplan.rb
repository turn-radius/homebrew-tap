# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.22"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.22/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4b22238d3a00abad2177a045f265dabafb38842ff5640f5bca05a286af51e3f2"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.22/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "264d7d36460de88f127ff9813a0ab9361217815be53b17288e8c2a3c72efa664"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.22/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8e54f63b586c222554929ec19757dce0b32abb1d38cd372c4294a2554ad729ae"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.22/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2a74bc705d494720a8f76554479e82f39f5c9153d1ebbc4b9d1b8c8459feb283"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
