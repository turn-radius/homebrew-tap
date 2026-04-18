# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.15"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.15/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "642fa855c920342c061c624653e7a80c007c394cacc0a43eebe26d7e723043fe"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.15/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2a5199774ca03acae7fa047c35fd0594fe69ad58c7e48ff82cec55153d4b4061"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.15/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e2aca79a3994290460447a3432d9892087a27310f49741fb247064fa609b7f43"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.15/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b493e566b9d80db1b1d13ef706a5e7254f3d12925c457553a8d5ede3fa8a2952"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
