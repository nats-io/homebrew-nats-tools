class Nsc < Formula
  desc "NATS Utility"
  homepage "https://github.com/nats-io/natscli"
  version "0.0.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/natscli/releases/download/v0.0.20/nats-darwin-amd64.zip"
    sha256 "9ec42ab7d75fe75b5e8abf17369036fed691a77d90eb9878b6a01b4bbe7a0f6f"
  end
  if OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/nats-io/natscli/releases/download/v0.0.20/nats-linux-amd64.zip"
    sha256 "6ff5f841796b82031ba8e94636a43157ed81b88e46c63b82bc4c521558c82fb4"
  end

  def install
    bin.install "nats"
  end

  test do
    system "#{bin}/nats --version"
  end
end
