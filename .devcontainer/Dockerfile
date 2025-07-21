# Start from base Ubuntu
FROM ubuntu:22.04

# Set environment for non-interactive installs
ENV DEBIAN_FRONTEND=noninteractive

# Install basic tools and X11/VNC environment
RUN apt-get update && apt-get install -y \
  sudo \
  wget \
  curl \
  python3 \
  python3-pip \
  git \
  x11vnc \
  fluxbox \
  novnc \
  websockify \
  xvfb \
  unzip \
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
  libglu1-mesa

# Install Webots manually
RUN wget https://github.com/cyberbotics/webots/releases/download/R2023b/webots-R2023b-x86-64.tar.bz2 && \
    tar -xjf webots-R2023b-x86-64.tar.bz2 && \
    mv webots-R2023b /usr/local/webots && \
    ln -s /usr/local/webots/webots /usr/bin/webots && \
    rm webots-R2023b-x86-64.tar.bz2

# Set display environment variable
ENV DISPLAY=:1

# Create working directory
WORKDIR /workspace
