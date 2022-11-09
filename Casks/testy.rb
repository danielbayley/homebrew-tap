cask "testy" do
  version :latest
  sha256 :no_check

  p "HOMEBREW_USER:", ENV["HOMEBREW_USER"] || "FAILED" # comment

  owner = ENV.fetch "GITHUB_REPOSITORY_OWNER"
  branch = "main"
  url "https://github.com/#{owner}/homebrew-tap/archive/refs/heads/#{branch}.zip"
  name "Testy"
  desc "Testing"
  homepage "https://github.com/#{owner}/homebrew-tap"

  artifact "README.md", target: "#{Dir.home}/Desktop/README.md"
  
  postflight do
    File.read "#{Dir.home}/Desktop/README.md"
  end
end
