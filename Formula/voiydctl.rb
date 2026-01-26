class Voiydctl < Formula
  desc "Lightweight, event-driven orchestration for container workloads"
  homepage "https://voiyd.io"
  version "v0.0.15"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amimof/voiyd/releases/download/v0.0.15/voiydctl-darwin-amd64"
      sha256 "1c096c20de255f6b80530dc8ee34c21dc2c341ce70b4f23ef58b6d2593f64ae8"
    else
      url "https://github.com/amimof/voiyd/releases/download/v0.0.15/voiydctl-darwin-arm64"
      sha256 "5ce64640b2fc6a6a0988a0f40e4c20598a9ed5ce631d740e422c5960d1bfb553"
    end
  end
  def install
    bin.install "voiydctl-darwin-#{Hardware::CPU.arch}" => "voiydctl"
  end
  test do
    system "#{bin}/voiydctl", "--version"
  end
end

