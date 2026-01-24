class Voiydctl < Formula
  desc "Lightweight, event-driven orchestration for container workloads"
  homepage "https://voiyd.io"
  version "v0.0.14"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amimof/voiyd/releases/download/v0.0.14/voiydctl-darwin-amd64"
      sha256 "5319562d601f6bbb22b092903366ec0e57ac412893b68a02d8cf5a4119cb532f"
    else
      url "https://github.com/amimof/voiyd/releases/download/v0.0.14/voiydctl-darwin-arm64"
      sha256 "dfd09093a8ebb6efaba4becc2265914b7f45fa69d55e6e5c46a87567df324fe3"
    end
  end
  def install
    bin.install "voiydctl-darwin-#{Hardware::CPU.arch}" => "voiydctl"
  end
  test do
    system "#{bin}/voiydctl", "--version"
  end
end

