FROM debian:11.1

LABEL \
    org.opencontainers.image.source="https://github.com/battony/probable-octo-enigma" \
    org.opencontainers.image.authors="Batalev Ilya"

RUN apt update && \
    apt install -y --no-install-suggests --no-install-recommends \
        git ca-certificates make gcc-arm-none-eabi && \
    apt autopurge -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
