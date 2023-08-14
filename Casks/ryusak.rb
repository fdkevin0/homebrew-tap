cask "ryusak" do
  version "1.6.2"
  sha256 "fc3d463f51381c4ec051849b5a539de08bcecdcafd9605062d8fb1e19744d709"

  url "https://github.com/Ecks1337/RyuSAK/releases/download/v#{version}/RyuSAK-darwin-arm64-#{version}.zip",
      verified: "github.com/Ecks1337/RyuSAK/"
  name "RyuSAK"
  homepage "https://github.com/Ecks1337/RyuSAK/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "RyuSAK.app"

  uninstall quit: "RyuSAK"

  zap trash: [
    "~/Library/Application Support/RyuSAK",
  ]
end
