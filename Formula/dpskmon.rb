class Dpskmon < Formula
  desc "Terminal UI for monitoring DeepSeek usage and balance"
  homepage "https://github.com/marble810/deepseek-monitor-tui"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marble810/deepseek-monitor-tui/releases/download/v0.1.0/dpskmon_0.1.0_darwin_arm64.tar.gz"
      sha256 "27a0010e9d498657046e20befa5d0e475765134d49929b649f6d037d6da798a4"
    else
      url "https://github.com/marble810/deepseek-monitor-tui/releases/download/v0.1.0/dpskmon_0.1.0_darwin_amd64.tar.gz"
      sha256 "32485c85a41596b3874c7466a8b341cf18e8fbda60da95aeff0c7c26394575e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marble810/deepseek-monitor-tui/releases/download/v0.1.0/dpskmon_0.1.0_linux_arm64.tar.gz"
      sha256 "c86f7846b6d26f1ff3baed21ce70e2b791d3889161a87f285b40b4d0cdbe4149"
    else
      url "https://github.com/marble810/deepseek-monitor-tui/releases/download/v0.1.0/dpskmon_0.1.0_linux_amd64.tar.gz"
      sha256 "4839406c7ffb63dcf1b753562492a3c8f92c972765f124111a0c6ebb0cd26435"
    end
  end

  def install
    bin.install "dpskmon"
  end

  test do
    output = shell_output("#{bin}/dpskmon 2>&1", 1)
    assert_match "no platform bearer token found", output
  end
end
