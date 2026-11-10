cask "iledelbe" do
  version "0.3.0"
  sha256 "ad1fc6ef4938ea5765f0f577fba8cb692cf1e6457c241a6df334e40ed40e395b"

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
