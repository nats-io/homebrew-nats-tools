# typed: false
# frozen_string_literal: true

class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/nats"
  version "0.1.5"

  head do
    url "https://github.com/nats-io/natscli.git", branch: "main"
    depends_on "go" => :build
  end

  on_macos do
    on_arm do
      url "https://github.com/nats-io/natscli/releases/download/v0.1.5/nats-0.1.5-darwin-arm64.zip"
      sha256 "67be29694ae393e277b102cff168052b1874608287c038dcc72b35068699c4a8"
    end
    on_intel do
      url "https://github.com/nats-io/natscli/releases/download/v0.1.5/nats-0.1.5-darwin-amd64.zip"
      sha256 "de85e408132209991e221bc1f4f67b360dac9ec201e5d26704af9a12632d2b28"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/natscli/releases/download/v0.1.5/nats-0.1.5-linux-arm64.zip"
        sha256 "49d3157511e4f8d61bdee273b4ea5d19821c454b261fe18568e18254febb344f"
      else
        url "https://github.com/nats-io/natscli/releases/download/v0.1.5/nats-0.1.5-linux-arm6.zip"
        sha256 "7d56537f53d0b769328094afb927480ad9576251a809af2ab9b657836938b3fd"
      end
    end
    on_intel do
      url "https://github.com/nats-io/natscli/releases/download/v0.1.5/nats-0.1.5-linux-amd64.zip"
      sha256 "728c562e8f59bacd5eb016a6db2664e343b79f3c6642ba03fb9fb1dce7a2bc40"
    end
  end

  def install
    if build.head?
      cd "nats" do
        system "go", "build"
        bin.install "nats"
      end
    else
      bin.install "nats"
    end
  end

  test do
    system "#{bin}/nats --version"
  end
end
