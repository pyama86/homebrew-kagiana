# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kagiana < Formula
  desc "Kagiana for Vault"
  homepage "https://github.com/pyama86/kagiana"
  version "0.4.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pyama86/kagiana/releases/download/v0.4.8/kagiana_0.4.8_darwin_arm64.tar.gz"
      sha256 "60a26c6851dce05ee50fef298a63f28dcd7891f4b22009d1f772e09063221433"

      def install
        bin.install 'kagiana'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pyama86/kagiana/releases/download/v0.4.8/kagiana_0.4.8_darwin_amd64.tar.gz"
      sha256 "b2f34454686c90696d4c2b66b368355024d6dd6896105cd881ee9434630dac47"

      def install
        bin.install 'kagiana'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pyama86/kagiana/releases/download/v0.4.8/kagiana_0.4.8_linux_amd64.tar.gz"
      sha256 "26ced8f4e4b539f8f39f22da98fd982e8dfa0baeaf105105c20de2a2d694f6d6"

      def install
        bin.install 'kagiana'
      end
    end
  end

  test do
    system "#{bin}/kagiana"
  end
end
