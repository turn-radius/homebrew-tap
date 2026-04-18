# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.13"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.13/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "33695d8f36ba6b5e92cd650f899ac3b1d5b75ff0e51da0fc63afb100b4adabda"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.13/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b1d1dda469a5ca10af61492efe913766f2d9404282c2c66bcf82dfd33770375d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.13/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4a934aefa887d064c9de323544ede1490e615229be9119f4dda56828846c0e47"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.13/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a71a7ff2f899c5bb5253f504b95a1ef6943973ec334d99c5b138f54698601d0e"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
