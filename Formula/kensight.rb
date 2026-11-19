class Kensight < Formula
  desc "Joins this machine to a Kensight fleet with a code you approve in Kensight"
  homepage "https://github.com/Insight-Corp/homebrew-kensight"
  url "https://raw.githubusercontent.com/Insight-Corp/homebrew-kensight/v1/kensight"
  sha256 "b4d0fcfc1112ae1d8e7e086f9e61e38dd3fac2fa24884e00d42e579da6e1e13a"
  version "1"

  def install
    bin.install "kensight"
    chmod 0755, bin/"kensight"
  end

  test do
    assert_match "usage: kensight join <kensight address>", shell_output("#{bin}/kensight 2>&1", 2)
  end
end
