# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.10"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.10/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f1265db1f4907dd60118ef9deaec300c54fe196be69462e334c4cbfd4359ec98"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.10/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4eced7cf4684a9ec2d89640be880a9723d53ef842f07b7095a8fdc067606d60c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.10/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e71613584dd739ede68a3fc17778bd042b7c4e27ab7f021306521860c8429a41"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.10/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7d6c827a08f3dba4424a7c4fd434d95447a61807d212f6d590a151ea4fc9b015"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
