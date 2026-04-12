# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.3.1"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.1/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "04cc07747d1984210403ae5526dbdc1809510fcb2f6f9627248d00578e35f0e1"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.1/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d6cc47817870a18c15974928d235e9380c582a07cffe5f951927eab2776d46e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.1/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "246e0768bb7fe5228669cb461d35372e8114247aacf11550fe84b98ff7caf889"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.3.1/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2c94443284bf41d6d2c75b290c6b181ac08647f4853b26e32872488b5ece312c"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
