FROM rust:bullseye AS builder
RUN cargo install geph5-client@0.2.10

FROM debian:bullseye
#RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/geph5-client /usr/local/bin/geph5-client
WORKDIR /root
COPY config.yaml /root
#RUN mkdir -p /root/.config/geph4-credentials
RUN chmod 777 -R /root
RUN mkdir -p ~/.config
RUN chmod 777 -R ~/.config
#ENV RUST_BACKTRACE=full
CMD ["geph5-client", "--config", "/root/config.yaml"]
