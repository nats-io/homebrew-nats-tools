# This file was generated by GoReleaser. DO NOT EDIT.
class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/nats"
  version "0.0.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-darwin-amd64.zip"
    sha256 "ee018400e83b1954325b6783b683b13a70d64d1ef4c5925e7a8bc7ee4e6d7b8d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-linux-amd64.zip"
    sha256 "cc4af188d697e030f3572091256bb7fba2c62d1c0ac52ba98572bb765e2b1369"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-linux-arm.zip"
    sha256 "8c2b07302d885911d7025320176a3f21727696f4b854450376fd6ad261ab4b5e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-linux-arm64.zip"
    sha256 "121a4037ba2c4960618389b4f4c8813306052bde22c19f0219a46a18e2ae97fe"
  end

  def install
    bin.install "nats"
  end

  test do
    system "#{bin}/nats --version"
  end
end
