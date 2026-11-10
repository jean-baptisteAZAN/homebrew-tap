cask "iledelbe" do
  version "0.2.0"
  sha256 "517039422a25c1d6b398a74a09ded6124b273bc373714d360e2330b80a272b5f"

  url "https://github.com/jean-baptisteAZAN/ileDelbe/releases/download/v#{version}/ileDelbe-#{version}.zip"
  name "ileDelbe"
  desc "Dynamic Island-style hub for the MacBook notch"
  homepage "https://github.com/jean-baptisteAZAN/ileDelbe"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "IleDelbe.app"

  uninstall quit: "io.github.ileDelbe"

  zap trash: "~/Library/Preferences/io.github.ileDelbe.plist"
end
