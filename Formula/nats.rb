# typed: false
# frozen_string_literal: true

class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/nats"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.4/nats-0.1.4-darwin-arm64.zip"
      sha256 "f03022e463c4534bcb8f0cef4eb6712e6d970d1216b6c29fffd8a263634b42c4"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.4/nats-0.1.4-darwin-amd64.zip"
      sha256 "d3c936599bfa8c1f545997e523fc5b10782507ed0b764c0107ec9aedfd9ddc4e"

      def install
        bin.install "nats"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.4/nats-0.1.4-linux-arm6.zip"
      sha256 "d29a6dc3133817a56e1d2af462b2b321294e4757edf9ff76c0d37fd8b24bb3dd"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.4/nats-0.1.4-linux-arm64.zip"
      sha256 "333a8365c75747266990c77e574a217a8c334d27861b21089ff78edc73ceb46c"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.1.4/nats-0.1.4-linux-amd64.zip"
      sha256 "7bb55b77f21f6630e04297c1acb921d9b7ab2c6417344005a6a0aa5a0f59aca7"

      def install
        bin.install "nats"
      end
    end
  end

  test do
    system "#{bin}/nats --version"
  end
end
