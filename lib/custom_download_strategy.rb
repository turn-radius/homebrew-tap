require "download_strategy"

class GitHubPrivateRepositoryReleaseDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    super
    parse_url_pattern
    set_github_token
  end

  def parse_url_pattern
    unless @url =~ %r{https://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)}
      raise CurlDownloadStrategyError, "Invalid URL pattern for GitHub Release."
    end
    _, @owner, @repo, @tag, @filename = *@url.match(%r{https://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)})
  end

  private

  def _fetch(url:, resolved_url:, timeout:)
    asset_url = fetch_asset_url
    curl(
      "--location",
      "--header", "Authorization: token #{@github_token}",
      "--header", "Accept: application/octet-stream",
      "--output", temporary_path.to_s,
      asset_url
    )
  end

  def fetch_asset_url
    require "json"
    require "net/http"
    require "uri"

    release_uri = URI("https://api.github.com/repos/#{@owner}/#{@repo}/releases/tags/#{@tag}")
    req = Net::HTTP::Get.new(release_uri)
    req["Authorization"] = "token #{@github_token}"
    req["Accept"] = "application/vnd.github.v3+json"

    http = Net::HTTP.new(release_uri.host, release_uri.port)
    http.use_ssl = true
    response = http.request(req)

    unless response.is_a?(Net::HTTPSuccess)
      raise CurlDownloadStrategyError, "GitHub API error #{response.code}: #{response.body}"
    end

    release = JSON.parse(response.body)
    asset = release["assets"].find { |a| a["name"] == @filename }
    raise CurlDownloadStrategyError, "Asset '#{@filename}' not found in release #{@tag}" unless asset

    asset["url"]
  end

  def set_github_token
    @github_token = ENV["HOMEBREW_GITHUB_API_TOKEN"]
    unless @github_token
      raise CurlDownloadStrategyError, "Set HOMEBREW_GITHUB_API_TOKEN to install from private repos."
    end
  end
end
