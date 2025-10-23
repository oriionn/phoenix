# Maintainer: wateir <contact@wateir.fr>

pkgname=phoenix-git
pkgver=1
pkgrel=1
pkgdesc="A small tool written in C to retrieve your Linux installation date"
arch=("any")
url="https://github.com/oriionn/phoenix"
licence=('MIT')
provides=('phoenix')
depends=()
makedepends=("git")
source=("git+https://github.com/oriionn/phoenix")
sha256sums=('SKIP')

pkgver() {
    cd "$srcdir/phoenix"
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short=7 HEAD)"
}

package() {
  cd "$srcdir/phoenix"
  make build

  install -Dm755 "phoenix" "$pkgdir/usr/bin/phoenix"
}

