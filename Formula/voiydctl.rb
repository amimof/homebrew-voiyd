class Voiydctl < Formula
  desc "Command-line tool for managing voiyd clusters"
  homepage "https://github.com/amimof/voiyd"
  version "0.0.11"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/amimof/voiyd/releases/download/v#{version}/voiydctl-darwin-arm64"
    sha256 "PUT_ARM64_SHA256_HERE"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/amimof/voiyd/releases/download/v#{version}/voiydctl-darwin-amd64"
    sha256 "PUT_AMD64_SHA256_HERE"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/amimof/voiyd/releases/download/v#{version}/voiydctl-linux-amd64"
    sha256 "PUT_LINUX_AMD64_SHA256_HERE"
  elsif OS.linux? && Hardware::CPU.arm?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/amimof/voiyd/releases/download/v#{version}/voiydctl-linux-arm64"
      sha256 "PUT_LINUX_ARM64_SHA256_HERE"
    else
      url "https://github.com/amimof/voiyd/releases/download/v#{version}/voiydctl-linux-arm"
      sha256 "PUT_LINUX_ARM_SHA256_HERE"
    end
  end

  def install
    # The downloaded file is the binary itself
    bin.install Dir["voiydctl-*"].first => "voiydctl"
  end

  test do
    system "#{bin}/voiydctl", "version"
  end
end
