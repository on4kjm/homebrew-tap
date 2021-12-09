# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flecli < Formula
  desc "Fast Log Entry (FLE) command line interface."
  homepage "https://github.com/on4kjm/FLEcli"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/on4kjm/homebrew-tap/releases/download/v0.1.4/FLEcli_0.1.4_macOS_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "7228153d74f479dcaa1ea2a364ef2a4c30175d29cddb4f4d88e4cd1d835ffcaa"

      def install
        bin.install "FLEcli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/on4kjm/homebrew-tap/releases/download/v0.1.4/FLEcli_0.1.4_macOS_64-bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "fdcc3ffa58363f1a0185ecbbd888ffefa25956004287ddb6807f1c10e4447842"

      def install
        bin.install "FLEcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/on4kjm/homebrew-tap/releases/download/v0.1.4/FLEcli_0.1.4_Linux_arm.tar.gz", :using => CurlDownloadStrategy
      sha256 "23b35e7f91fe58910917a12a47969afd01aa72d24b179c9ac0b83eaf23355602"

      def install
        bin.install "FLEcli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/on4kjm/homebrew-tap/releases/download/v0.1.4/FLEcli_0.1.4_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "58e27f54abacd61b78288293b597293cd1d99213c9263a96303fba2acd3f0f1d"

      def install
        bin.install "FLEcli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/on4kjm/homebrew-tap/releases/download/v0.1.4/FLEcli_0.1.4_Linux_64-bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "b11a7dbf64941809613afb4775faf71b9f9c7b49c4f28a272be8f1a655b088fa"

      def install
        bin.install "FLEcli"
      end
    end
  end

  test do
    system "#{bin}/FLEcli version"
  end
end
