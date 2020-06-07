class Shiitake < Formula
  desc "しいたけ占い"
  homepage "https://github.com/kosa3/shiitake"
  url "https://github.com/kosa3/shiitake/archive/v0.1.2.tar.gz"
  sha256 "fb2fbfcfd42bc0c24ed3cbf9de6f5abc3d1312c68d6db728078d95c05c430093"

  depends_on "go" => :build

  def install
    ENV['GOPATH'] = buildpath
    path = buildpath/"src/github.com/kosa3/shiitake/"
    path.install buildpath.children

    cd path do
        system 'go', 'get'
        system 'go', 'build'
        bin.install 'shiitake'
    end
  end
end
