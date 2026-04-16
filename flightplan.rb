# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.7.0"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.0/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3846bca13502f8c2cb4a99f9e903f59844790128cdc824ebfc2466c5e053455f"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.0/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0df43a6799032759649e5f08513f4e8be3fcd26e5dd7e3469514faf43543f905"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.0/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0e5b35e7bc27bac8108fed92db207f2f51481d5c9c8623154eaa94749d430d17"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.7.0/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "dbbd8de50c6972e4741345cf237ae7bce0d1e7a3e9dcf7f31802273a3d576dc0"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
