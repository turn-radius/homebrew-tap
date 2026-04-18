# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.19"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.19/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "836671a22463fba37fde36cb557fc3b6ea2c44c7a33c5b798cd4684d355d6421"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.19/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "af9bdc7de4d4da01e639e003947f344fc9929d1d787f95c5213e1331b147b73e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.19/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d7a983348e23eb158ed233fc8139e2aeba4917805f435c351a56d9c7f36ea886"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.19/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "253d64b021b3c7368c88e44ed21a4f238f28a7995fb98f8a6899e6b405d1a620"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
