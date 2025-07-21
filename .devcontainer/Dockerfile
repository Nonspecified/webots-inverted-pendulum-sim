# Use official Ubuntu base
FROM ubuntu:22.04

# Prevent user prompts during package install
ENV DEBIAN_FRONTEND=noninteractive

# Update and install required tools and GUI/VNC/Webots dependencies
RUN apt-get update && apt-get install -y \
  wget \
  curl \
  unzip \
  git \
  python3 \
  python3-pip \
  sudo \
  x11vnc \
  fluxbox \
  novnc \
  websockify \
  xvfb \
  supervisor \
  libnss3 \
  libegl1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxi6 \
  libxtst6 \
  libasound2 \
  libatk1.0-0 \
  libgtk-3-0 \
  libxrandr2 \
  libgbm1 \
  libglu1-mesa && \
  rm -rf /var/lib/apt/lists/*

# Install Webots R2025a
RUN wget https://github.com/cyberbotics/webots/releases/download/R2025a/webots-R2025a-x86-64.tar.bz2 && \
    tar -xjf webots-R2025a-x86-64.tar.bz2 && \
    mv webots-R2025a /usr/local/webots && \
    ln -s /usr/local/webots/webots /usr/bin/webots && \
    rm webots-R2025a-x86-64.tar.bz2

# Set default display variable for X11 GUI
ENV DISPLAY=:1

# Set working directory (where student files live)
WORKDIR /workspace
