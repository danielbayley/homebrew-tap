cask "testy" do
  version :latest
  sha256 :no_check
  
  branch = "main" # comment
  url "https://github.com/danielbayley/homebrew-tap/archive/refs/heads/#{branch}.zip"
  name "Testy"
  desc "Testing"
  homepage "https://github.com/danielbayley/homebrew-tap"

  stage_only true
end
