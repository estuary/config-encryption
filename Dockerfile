FROM debian:bullseye-slim

# Note that the .dockerignore ignores all files except for those mentioned here.

# expects that fetch-sops.sh has been run to download binaries into sops-bin/
COPY sops-bin/sops  /usr/bin/

# expects that cargo build --release has been run
COPY target/release/flow-config-encryption  /usr/bin/

ENTRYPOINT flow-config-encryption

