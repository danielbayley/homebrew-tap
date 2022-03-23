require_relative "../lib/utils"

cask "test-cask" do
  version :latest
  sha256 :no_check

  url "https://github.com/danielbayley/homebrew-sandbox/archive/main.tar.gz", using: NoDownloadStrategy
  name "Test Cask"
  desc "Testing cask"
  homepage "https://github.com/danielbayley/homebrew-sandbox#readme"

  stage_only true
end
