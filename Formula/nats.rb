# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/natscli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.2.0/nats-0.2.0-darwin-amd64.zip"
      sha256 "9e2e7e2e3bde69088349a02a5e07c777fe1693869651982f65d0ce94345f5d66"

      def install
        bin.install "nats"
        generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nats-io/natscli/releases/download/v0.2.0/nats-0.2.0-darwin-arm64.zip"
      sha256 "3ba4276f74e958b139ea583c9a0432ef2644ac64304ff2bba0277acd7bdf29ab"

      def install
        bin.install "nats"
        generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/natscli/releases/download/v0.2.0/nats-0.2.0-linux-amd64.zip"
        sha256 "d603c2ab08c8a7bdfdffa07acaf07f076bc08a5966a8df3495d01cd4fd031126"

        def install
          bin.install "nats"
          generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/natscli/releases/download/v0.2.0/nats-0.2.0-linux-arm6.zip"
        sha256 "1632062317e9a3ec234e8acab30d3919bb340932c0f23e63efec1231deb58316"

        def install
          bin.install "nats"
          generate_completions_from_executable(bin/"nats", shells: [:bash, :zsh], shell_parameter_format: "--completion-script-")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nats-io/natscli/releases/download/v0.2.0/nats-0.2.0-linux-arm64.zip"
        sha256 "c9f31feff0aac100bac383761cebd4b3a30f4960a769de7aa3ff26e71ba96c4a"

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
