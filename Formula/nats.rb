# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/natscli"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.2.2/nats-0.2.2-darwin-amd64.zip"
      sha256 "21d0578eafd4bfbad96ddc9a21b65f7bdc711bb5e399355e60c6483c6dbbe770"

      def install
        bin.install "nats"
        generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nats-io/natscli/releases/download/v0.2.2/nats-0.2.2-darwin-arm64.zip"
      sha256 "7bf0cc48d613d8edefcca5171d062a8bca96a489350fafa892f26e4aceb7c88d"

      def install
        bin.install "nats"
        generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/natscli/releases/download/v0.2.2/nats-0.2.2-linux-amd64.zip"
        sha256 "6e14ce8f370ba93ee73182a323457bf6623ce94ed33c1529640f694c39dbc5dd"

        def install
          bin.install "nats"
          generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/natscli/releases/download/v0.2.2/nats-0.2.2-linux-arm6.zip"
        sha256 "6314c748a80b366b520f77947414de55a4f8f20dc0b894a901918872469d67a5"

        def install
          bin.install "nats"
          generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/natscli/releases/download/v0.2.2/nats-0.2.2-linux-arm64.zip"
        sha256 "20a0cf38397581f4bab9be0cd3e262442fb749e08c1937f2fae776106ca071fc"

        def install
          bin.install "nats"
          generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
        end
      end
    end
  end

  test do
    system "#{bin}/nats --version"
  end
end
