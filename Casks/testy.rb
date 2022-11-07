cask "testy" do
  version :latest
  sha256 :no_check

  p "HOMEBREW_USER:", (ENV["HOMEBREW_USER"] || "FAILED")

  owner = ENV.fetch "GITHUB_REPOSITORY_OWNER"
  branch = "main"
  url "https://github.com/#{owner}/homebrew-tap/archive/refs/heads/#{branch}.zip"
  name "Testy"
  desc "Testing"
  homepage "https://github.com/#{owner}/homebrew-tap"

  stage_only true
end
