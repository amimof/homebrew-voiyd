class Voiydctl < Formula
  desc "Lightweight, event-driven orchestration for container workloads"
  homepage "https://voiyd.io"
  version \v0.0.12\
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amimof/voiyd/releases/download/v0.0.12/voiydctl-darwin-amd64"
      sha256 "21ea8db0a98c78ebe392f563008698693799e3adf812041cdc388a3f8528f0d8"
    else
      url "https://github.com/amimof/voiyd/releases/download/v0.0.12/voiydctl-darwin-arm64"
      sha256 "46dadd6b25ada30e8f000e4c09072642e51170655bca6efb70e1cebf70d9221b"
    end
  end
  def install
    bin.install "voiydctl-darwin-#{Hardware::CPU.arch}" => "voiydctl"
  end
  test do
    system "#{bin}/voiydctl", "--version"
  end
end

