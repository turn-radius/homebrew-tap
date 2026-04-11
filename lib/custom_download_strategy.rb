require "download_strategy"

class GitHubPrivateRepositoryDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    super
    parse_url_pattern
    set_github_token
  end

  def parse_url_pattern
    unless @url =~ %r{https://github.com/([^/]+)/([^/]+)/(\S+)}
      raise CurlDownloadStrategyError, "Invalid URL pattern for GitHub Repository."
    end
    _, @owner, @repo, @filepath = *@url.match(%r{https://github.com/([^/]+)/([^/]+)/(\S+)})
  end

  private

  def _fetch(url:, resolved_url:, timeout:)
    curl_download(
      "https://#{@github_token}@github.com/#{@owner}/#{@repo}/#{@filepath}",
      to: temporary_path,
      timeout: timeout
    )
  end

  def set_github_token
    @github_token = ENV["HOMEBREW_GITHUB_API_TOKEN"]
    unless @github_token
      raise CurlDownloadStrategyError, "Set HOMEBREW_GITHUB_API_TOKEN to install from private repos."
    end
  end
end

class GitHubPrivateRepositoryReleaseDownloadStrategy < GitHubPrivateRepositoryDownloadStrategy
  def parse_url_pattern
    unless @url =~ %r{https://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)}
      raise CurlDownloadStrategyError, "Invalid URL pattern for GitHub Release."
    end
    _, @owner, @repo, @tag, @filename = *@url.match(%r{https://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)})
  end

  private

  def _fetch(url:, resolved_url:, timeout:)
    asset_url = fetch_asset_url
    curl_download(
      asset_url,
      to: temporary_path,
      timeout: timeout,
      headers: ["Authorization: token #{@github_token}", "Accept: application/octet-stream"]
    )
  end

  def fetch_asset_url
    require "json"
    require "open-uri"

    release_url = "https://api.github.com/repos/#{@owner}/#{@repo}/releases/tags/#{@tag}"
    response = URI.open(
      release_url,
      "Authorization" => "token #{@github_token}",
      "Accept" => "application/vnd.github.v3+json"
    ).read
    release = JSON.parse(response)
    asset = release["assets"].find { |a| a["name"] == @filename }
    raise CurlDownloadStrategyError, "Asset '#{@filename}' not found in release #{@tag}" unless asset

    asset["url"]
  end
end
