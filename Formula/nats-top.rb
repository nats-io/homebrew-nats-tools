# typed: false
# frozen_string_literal: true

class NatsTop < Formula
  desc "top-like tool for monitoring NATS servers"
  homepage "https://github.com/nats-io/nats-top"
  version "0.6.2"

  head do
    url "https://github.com/nats-io/nats-top.git", branch: "main"
    depends_on "go" => :build
  end

  on_macos do
    on_arm do
      url "https://github.com/nats-io/nats-top/releases/download/v0.6.2/nats-top_0.6.2_darwin_arm64.tar.gz"
      sha256 "1f407832bc36a97f595bbaf948d8df2ae49dcc85e585a468061d9b741122c2f4"
    end
    on_intel do
      url "https://github.com/nats-io/nats-top/releases/download/v0.6.2/nats-top_0.6.2_darwin_amd64.tar.gz"
      sha256 "50294445fd6129d53446035957d7177b45c205971b4bc88535153c3ff4ba70ee"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/nats-top/releases/download/v0.6.2/nats-top_0.6.2_linux_arm64.tar.gz"
        sha256 "c2b66974a09c50795aba462f18d9e7d1ad5a3e0f39bd89eac61c066dd6733d8a"
      else
        url "https://github.com/nats-io/nats-top/releases/download/v0.6.2/nats-top_0.6.2_linux_armv6.tar.gz"
        sha256 "09d919bf27f6ec7a68307546dd71827bc31e1416b5109fb2a5722520d12fa992"
      end
    end
    on_intel do
      url "https://github.com/nats-io/nats-top/releases/download/v0.6.2/nats-top_0.6.2_linux_amd64.tar.gz"
      sha256 "0f3de256290f70cbc67217fb5eeec0e0b026319c680e70d235f3549d44378f81"
    end
  end

  def install
    if build.head?
      system "go", "build"
    end
    bin.install "nats-top"
  end

  test do
    system "#{bin}/nats-top --version"
  end
end
