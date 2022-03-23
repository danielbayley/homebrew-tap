require_relative "../lib/utils"

class TestFormula < Formula
  repo = URI GitHub.user["html_url"] + "/homebrew-sandbox"

  desc "#{name.demodulize} repository for testing"
  homepage "https://#{repo.host + repo.path}#readme"
  url "#{repo}/archive/main.tar.gz", using: NoDownloadStrategy
  version "latest"
  sha256 Digest::SHA256.hexdigest version
  head "#{repo}.git", branch: "main"

  def install
    touch "README.md"
    doc.install "README.md"
  end

  test do
    system "true"
  end
end
