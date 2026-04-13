# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.7"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.7/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "58dcb7e6d45b0f2d54b5e0952505307e5d760cfdc07175dd5097584c6588f672"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.7/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "205cb4afc5dd25548743baf55f26761b08ccf0ac6267bfb2d58289b38fcbe904"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.7/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e420268af361a2a5cacc3360126955374e787591d031317986ffea0372243bc4"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.7/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a85ad716422cb9636ea678cac217b36de8cc752898fb41acd18cb353a1b81f5d"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
