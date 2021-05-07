# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "2.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/nsc/releases/download/2.2.3/nsc-darwin-amd64.zip"
    sha256 "d642f75db7d1d3d72d5a7ee5a9f0142c7dce6ac20ce7994af55c2d141b3dd0bc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nats-io/nsc/releases/download/2.2.3/nsc-linux-amd64.zip"
    sha256 "7acfbb4572e2c3e91f76bad04d28edc951a1d3892d2497862434c0d9b1f00c14"
  end

  def install
    bin.install "nsc"
  end

  test do
    system "#{bin}/nsc --version"
  end
end
