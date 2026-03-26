class Pry < Formula
  desc "Terminal UI for reviewing GitHub pull requests with inline comments"
  homepage "https://github.com/jethrokuan/pry"
  version "0.0.1-alpha.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jethrokuan/pry/releases/download/v0.0.1-alpha.2/pry_0.0.1-alpha.2_darwin_arm64.tar.gz"
      sha256 "c8d018198615c8218d8892d080d373e7248ba9ff9fb383a9b80833c23d2cd459"
    end

    on_intel do
      url "https://github.com/jethrokuan/pry/releases/download/v0.0.1-alpha.2/pry_0.0.1-alpha.2_darwin_amd64.tar.gz"
      sha256 "530c3e9d4de2fa3e37f3008994c3b7047dd069a6c3e3a729582767405ccdd3ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jethrokuan/pry/releases/download/v0.0.1-alpha.2/pry_0.0.1-alpha.2_linux_arm64.tar.gz"
      sha256 "a1cd6969f6dc9aa8a2e2dc4120e159b69877cda314ee5d673ae3395097c56cfe"
    end

    on_intel do
      url "https://github.com/jethrokuan/pry/releases/download/v0.0.1-alpha.2/pry_0.0.1-alpha.2_linux_amd64.tar.gz"
      sha256 "8c88e3b99a553e490735b69e689d170d0073dd33cc6e64a8ae407d654a05f575"
    end
  end

  depends_on "gh"

  def install
    bin.install "pry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pry --version")
  end
end
