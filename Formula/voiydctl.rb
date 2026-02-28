class Voiydctl < Formula
  desc "Lightweight, event-driven orchestration for container workloads"
  homepage "https://voiyd.io"
  version "v0.0.18"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amimof/voiyd/releases/download/v0.0.18/voiydctl-darwin-amd64"
      sha256 "999e4da82fcd761823b18c6cf5e5c67265e8f8620e9734fd64716a5b90af1489"
    else
      url "https://github.com/amimof/voiyd/releases/download/v0.0.18/voiydctl-darwin-arm64"
      sha256 "f6d73b109b0caa33d05bb2f2dd828e0d9df8aebe7b9afbff210a8d12da622eb1"
    end
  end
  def install
    bin.install "voiydctl-darwin-#{Hardware::CPU.arch}" => "voiydctl"
  end
  test do
    system "#{bin}/voiydctl", "--version"
  end
end

