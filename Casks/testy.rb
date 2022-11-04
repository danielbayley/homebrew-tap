cask "testy" do
  version :latest
  sha256 :no_check

  url "https://github.com/danielbayley/homebrew-tap/archive/refs/heads/main.zip"
  name "Testy"
  desc "Testing"
  homepage "https://github.com/danielbayley/homebrew-tap"

  stage_only true
end
