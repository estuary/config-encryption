#!/bin/bash

set -e

mkdir -p sops-bin
rm -f sops-bin/sops

# -S is show error, -L follows redirects
curl -SL -o sops-bin/sops https://github.com/mozilla/sops/releases/download/v3.7.3/sops-v3.7.3.linux.amd64

sha256sum --check <<EOF
53aec65e45f62a769ff24b7e5384f0c82d62668dd96ed56685f649da114b4dbb sops-bin/sops
EOF

chmod +x sops-bin/sops

