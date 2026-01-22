class Voiydctl < Formula
  desc "Lightweight, event-driven orchestration for container workloads"
  homepage "https://voiyd.io"
  version "v0.0.13"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amimof/voiyd/releases/download/v0.0.13/voiydctl-darwin-amd64"
      sha256 "821398314148f5e132b2eb40623b591ca35f4342a8cf7384e2afef93cce107be"
    else
      url "https://github.com/amimof/voiyd/releases/download/v0.0.13/voiydctl-darwin-arm64"
      sha256 "67765b53df927c3a1ff8772b7e8550421ebb8232cf294a9a02093fc3e606300e"
    end
  end
  def install
    bin.install "voiydctl-darwin-#{Hardware::CPU.arch}" => "voiydctl"
  end
  test do
    system "#{bin}/voiydctl", "--version"
  end
end

