cask "testy" do
  version :latest
  sha256 :no_check

  p ENV.fetch "HOMEBREW_A"
  p ENV.fetch "HOMEBREW_B"
  p ENV.fetch "HOMEBREW_C"

  branch = "main"
  url "https://github.com/#{owner}/homebrew-tap/archive/refs/heads/#{branch}.zip"
  name "Testy"
  desc "Testing"
  homepage "https://github.com/#{owner}/homebrew-tap"

  stage_only true
end
