# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "2.10.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/nsc/releases/download/v2.10.2/nsc-darwin-amd64.zip"
      sha256 "4ab3246510e59e458151d163572acd3ac6e089f1a33ef3632b3250a3435d666d"

      def install
        bin.install "nsc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nats-io/nsc/releases/download/v2.10.2/nsc-darwin-arm64.zip"
      sha256 "2806ffe621e4db0bb8713b59a179a779f0190ebc5bbd1c7ac5269fed6b274030"

      def install
        bin.install "nsc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/nsc/releases/download/v2.10.2/nsc-linux-amd64.zip"
        sha256 "b0bcbd74e70f3d812473e140e3674bcf66df4ff0e151b3c74cbd777455a771d0"

        def install
          bin.install "nsc"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/nsc/releases/download/v2.10.2/nsc-linux-armv6.zip"
        sha256 "db2fd96f30e15d32a9a867e5825d43311369f215357e8fc46a3a2b9649305c49"

        def install
          bin.install "nsc"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/nsc/releases/download/v2.10.2/nsc-linux-arm64.zip"
        sha256 "40df71fb609868080905581e0fd1b4d26d1ff86b3c22f4ed54fd0087c8dd8b09"

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
