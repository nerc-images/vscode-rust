FROM quay.io/opendatahub-contrib/workbench-images:vscode-datascience-c9s-py311_2023c_latest

USER root

ENV \
  RUSTUP_HOME=/usr/local \
  CARGO_HOME=/usr/local

RUN yum install -y \
  cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN cargo install evcxr_jupyter --version 0.14.0
RUN evcxr_jupyter --install
RUN install -d /opt/app-root/share/jupyter/kernels/rust
RUN mv /opt/app-root/src/.local/share/jupyter/kernels/rust /opt/app-root/share/jupyter/kernels/rust
RUN rustup component add rust-src
RUN pip install \
  bash_kernel \
  jupyterlab
RUN python -m bash_kernel.install
