class Voiydctl < Formula
  desc "Lightweight, event-driven orchestration for container workloads"
  homepage "https://voiyd.io"
  version "v0.0.17"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amimof/voiyd/releases/download/v0.0.17/voiydctl-darwin-amd64"
      sha256 "0f54f2c4ad76cc516dea512f82ade500b27b21f8b3a81d9884e71829a30b62b0"
    else
      url "https://github.com/amimof/voiyd/releases/download/v0.0.17/voiydctl-darwin-arm64"
      sha256 "2b588a61fb32a389b8a55a3c93afe973fd1bdcaf09d917bce4a4a8e4710813ee"
    end
  end
  def install
    bin.install "voiydctl-darwin-#{Hardware::CPU.arch}" => "voiydctl"
  end
  test do
    system "#{bin}/voiydctl", "--version"
  end
end

