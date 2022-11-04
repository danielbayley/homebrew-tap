cask "testy" do
  version :latest
  sha256 :no_check

  owner = ENV["TOP_SECRET"]
  p "owner: #{owner}" # comment

  branch = "main"
  url "https://github.com/#{owner}/homebrew-tap/archive/refs/heads/#{branch}.zip"
  name "Testy"
  desc "Testing"
  homepage "https://github.com/#{owner}/homebrew-tap"

  stage_only true
end
