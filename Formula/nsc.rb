# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "2.10.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/nats-io/nsc/releases/download/v2.10.0/nsc-darwin-amd64.zip"
      sha256 "733f50b23b4ef8c51d7c888fa25b2fe9c06cfae1d0b63b8bee29c20bd796ef16"

      def install
        bin.install "nsc"
      end
    end
    on_arm do
      url "https://github.com/nats-io/nsc/releases/download/v2.10.0/nsc-darwin-arm64.zip"
      sha256 "6d53993df184ad5c5c7da4cb85e61dcea2ade0f1ab21fdcfe26681c25839a27d"

      def install
        bin.install "nsc"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/nsc/releases/download/v2.10.0/nsc-linux-amd64.zip"
        sha256 "bce9cecbf5957b4848efeaa134a84bbeecedaaced09e6fb31bdbcdbc0ceb3bfc"

        def install
          bin.install "nsc"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/nsc/releases/download/v2.10.0/nsc-linux-armv6.zip"
        sha256 "60e9101518a0fecb75a0936cbc438698984bf99ed96a044c89c46a7e92b4aef0"

        def install
          bin.install "nsc"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/nsc/releases/download/v2.10.0/nsc-linux-arm64.zip"
        sha256 "4acd7f519974775866db438b354d8a51cdc51803890b01985eb9f8aa858f189c"

        def install
          bin.install "nsc"
        end
      end
    end
  end

  test do
    system "#{bin}/nsc --version"
  end
end
