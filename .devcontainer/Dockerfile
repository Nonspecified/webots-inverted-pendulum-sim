FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  python3 python3-pip wget curl unzip git sudo \
  x11vnc fluxbox novnc websockify xvfb \
  libgtk-3-0 libnss3 libegl1 libasound2 libxi6 libxrandr2 \
  libxcomposite1 libxcursor1 libxdamage1 libatk1.0-0 libgbm1 libglu1-mesa

RUN wget https://github.com/cyberbotics/webots/releases/download/R2025a/webots-R2025a-x86-64.tar.bz2 && \
    tar -xjf webots-R2025a-x86-64.tar.bz2 && \
    mv webots-R2025a /usr/local/webots && \
    ln -s /usr/local/webots/webots /usr/bin/webots && \
    rm webots-R2025a-x86-64.tar.bz2

ENV DISPLAY=:1
WORKDIR /workspace
