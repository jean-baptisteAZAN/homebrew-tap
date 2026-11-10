cask "iledelbe" do
  version "0.4.0"
  sha256 "4b0228a7b46536d1031e553f68da273f70e629c3f088b5529072d77a17964b74"

  url "https://github.com/jean-baptisteAZAN/ileDelbe/releases/download/v#{version}/ileDelbe-#{version}.zip"
  name "ileDelbe"
  desc "Dynamic Island-style hub for the MacBook notch"
  homepage "https://github.com/jean-baptisteAZAN/ileDelbe"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "IleDelbe.app"

  uninstall quit: "io.github.ileDelbe"

  zap trash: "~/Library/Preferences/io.github.ileDelbe.plist"
end
