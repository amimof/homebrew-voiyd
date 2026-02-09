class Voiydctl < Formula
  desc "Lightweight, event-driven orchestration for container workloads"
  homepage "https://voiyd.io"
  version "v0.0.16"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amimof/voiyd/releases/download/v0.0.16/voiydctl-darwin-amd64"
      sha256 "9d6e565ffe1e65b5781c77a2dfe13944e741bff65108907dc4e975258a56481e"
    else
      url "https://github.com/amimof/voiyd/releases/download/v0.0.16/voiydctl-darwin-arm64"
      sha256 "ffb3ad639e7c9d25560a72257d7489567a26b10b0cef5dc056713e465b1fcf01"
    end
  end
  def install
    bin.install "voiydctl-darwin-#{Hardware::CPU.arch}" => "voiydctl"
  end
  test do
    system "#{bin}/voiydctl", "--version"
  end
end

