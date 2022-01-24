from archlinux:latest

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm base-devel rustup aarch64-linux-gnu-glibc aarch64-linux-gnu-gcc aarch64-linux-gnu-binutils aarch64-linux-gnu-linux-api-headers
RUN rustup toolchain install stable
RUN rustup target add aarch64-unknown-linux-gnu
