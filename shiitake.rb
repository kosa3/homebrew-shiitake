class Shiitake < Formula
  desc "しいたけ占い"
  homepage "https://github.com/kosa3/shiitake"
  url "https://github.com/kosa3/shiitake/archive/v0.1.4.tar.gz"
  sha256 "45b88d2f6ebfa5140e82276c2ab1773e0dc608a74d9f42c65db155c51d639cc8"

  depends_on "go" => :build

  def install
    ENV['GOPATH'] = buildpath
    path = buildpath/"src/github.com/kosa3/shiitake/"
    path.install buildpath.children

    cd path do
        system 'go', 'build'
        bin.install 'shiitake'
    end
  end
end
