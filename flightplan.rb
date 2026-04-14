# typed: false
# frozen_string_literal: true

require_relative "lib/custom_download_strategy"

class Flightplan < Formula
  desc "Local-first issue tracker for AI agent workflows"
  homepage "https://github.com/turn-radius/flightplan"
  version "0.6.28"

  on_macos do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.28/flightplan_darwin_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "659a3950dcf719e310f062e7a3303da8e9282d141c36a90015da3023abb8bf01"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.28/flightplan_darwin_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "be21692eff66d4be9bd743401ab994c7e9c265ec15177aaa50fb2e460b75912c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.28/flightplan_linux_amd64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f58dbc55fb9baacb521bc7528b1865effb97e5993a9850fb1ca0236a29750527"
    end
    on_arm do
      url "https://github.com/turn-radius/flightplan/releases/download/v0.6.28/flightplan_linux_arm64.tar.gz",
using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cb08de0865beaae14f5997658e9826cf708727317923be158a15c6be2f4798b6"
    end
  end

  def install
    bin.install "fp"
  end

  test do
    system "#{bin}/fp", "--version"
  end
end
