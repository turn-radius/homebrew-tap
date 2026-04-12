# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.0/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "818d28a18e41c7a2bae5540138630cbeaa406a1205d32f9647cd2c2006c79f50"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.0/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "03650a5757316a5fa36fac8527f54114c57984801a7a925c7d7b999f02ec55a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.0/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "98594d3ab1ab855580459ff71a30cd0aff9805ef44ebd0b801602ea953286bdc"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.0/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "31861681d715cdea91b5487c6983c92dd4be345302f88b1a5e60c6856d086883"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
