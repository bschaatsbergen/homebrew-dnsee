# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dnsee < Formula
  desc "Check DNS configurations quickly"
  homepage "https://github.com/bschaatsbergen/dnsee"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bschaatsbergen/dnsee/releases/download/v0.4.0/dnsee_0.4.0_darwin_amd64.tar.gz"
      sha256 "5e874f0bc2f7f1b6f04fba1e8411caca0605fd2d4497481f91924c624cfe30f2"

      def install
        bin.install "dnsee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bschaatsbergen/dnsee/releases/download/v0.4.0/dnsee_0.4.0_darwin_arm64.tar.gz"
      sha256 "eba4302d211c202ad24b0280a1b75f84802382bf354540e635ae7a10474a951b"

      def install
        bin.install "dnsee"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bschaatsbergen/dnsee/releases/download/v0.4.0/dnsee_0.4.0_linux_arm64.tar.gz"
      sha256 "f15c233cc3d4b7e9a53af0d8eeadaa59d88de89c65cce43c6945e24fb77eb02e"

      def install
        bin.install "dnsee"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bschaatsbergen/dnsee/releases/download/v0.4.0/dnsee_0.4.0_linux_amd64.tar.gz"
      sha256 "55032c0ed4ee45f805ce7cbb22916477b8af857772be2506bc88f23e4a620788"

      def install
        bin.install "dnsee"
      end
    end
  end

  test do
    system "#{bin}/dnsee -v"
  end
end
