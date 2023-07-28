# syntax=docker/dockerfile:1
FROM ubuntu:latest

LABEL maintainer="Kotaro Sonoda"

ARG apt_get_server=ftp.jaist.ac.jp/pub/Linux
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV DEBIAN_FRONTEND=nointeractive
ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8

WORKDIR /opt

RUN \
    sed -i s@archive.ubuntu.com@s{apt_get_server}@g /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y \
        curl apt-transport-https libarchive-tools ca-certificates git \
        zip unzip wget sudo python3-poetry && \
    # create user and set UID and GID
    groupadd --gid $USER_GID $USERNAME && \
    useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
