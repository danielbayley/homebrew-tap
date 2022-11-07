cask "testy" do
  version :latest
  sha256 :no_check
  
  pp ENV.filter { |k,| k =~ /^HOMEBREW-(A|B|C)/ } # comment

  branch = "main"
  url "https://github.com/#{owner}/homebrew-tap/archive/refs/heads/#{branch}.zip"
  name "Testy"
  desc "Testing"
  homepage "https://github.com/#{owner}/homebrew-tap"

  stage_only true
end
