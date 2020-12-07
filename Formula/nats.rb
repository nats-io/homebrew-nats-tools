# This file was generated by GoReleaser. DO NOT EDIT.
class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/nats"
  version "0.0.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-darwin-amd64.zip"
    sha256 "cdbdfaf48e1e5217c0f834f9065434eb3e2b97ece3d15099df98119fa837e063"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-linux-amd64.zip"
    sha256 "ed831ef34ef1c0f7b61e45a8da4b28c51dcb9006cd8e71752b8648af9654a26d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-linux-arm.zip"
    sha256 "869f20b4355458a5659431ab1825dade21353fe46658ddb4d0b5912b4c9ff814"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nats-io/natscli/releases/download/0.0.20/nats-linux-arm64.zip"
    sha256 "6436facd67ebbda859f5e3966dce83f724e483af60c152da4bc7d408ca6680c3"
  end

  def install
    bin.install "nats"
  end

  test do
    system "#{bin}/nats --version"
  end
end
