# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.26"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.26/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bcf9c4e79a81d1415d4e6c98c1e4a3ff020c8e5cf7be3d7ab3849fbf32ceb18f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.26/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e70d335e054cd3519e23702ac76e87d86ae7e660866ddd1f951137ea3c74b34b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.26/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fc643a91eba77210db29c7e42c01fc9019b9884b33b3415b8b9af4ac004a779e"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.26/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a72a587ba1c94f920b475d5fa8f523e9e817e4d760f83c77385160260fd2499f"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
