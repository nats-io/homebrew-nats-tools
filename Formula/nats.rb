# typed: false
# frozen_string_literal: true

class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/nats"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.3/nats-0.1.3-darwin-arm64.zip"
      sha256 "13fc797585d6afd686910f3c15cb4bcdddb11774e3e667e18d7ac5fe8b3388c3"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.3/nats-0.1.3-darwin-amd64.zip"
      sha256 "7e5cc864dd77cab1d4491ff3e09e5d5a713c95d61470067ec2bff5b45e75b50c"

      def install
        bin.install "nats"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.3/nats-0.1.3-linux-arm6.zip"
      sha256 "f098c1a133cffb3923402323352a8976effd165587dc697a3e66fcec611954b4"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.3/nats-0.1.3-linux-arm64.zip"
      sha256 "233b412d507e661574bd679be4f75c8bdaf7e709795a0863d3584e4ee3d03fd0"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.3/nats-0.1.3-linux-amd64.zip"
      sha256 "7c94cbee0295a828615fb4e0ffa730c3939fc3139db085a4e158592abb4bd5f0"

      def install
        bin.install "nats"
      end
    end
  end

  test do
    system "#{bin}/nats --version"
  end
end
