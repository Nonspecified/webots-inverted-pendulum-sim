FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Create vscode user (needed for Codespaces compatibility)
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update && apt-get install -y \
  sudo curl wget git unzip python3 python3-pip \
  xvfb x11vnc fluxbox novnc websockify \
  libglu1-mesa libegl1 libxkbcommon0 libsndio7.0 \
  libgl1 libglib2.0-0 libnss3 libasound2t64 libxi6 libxrandr2 \
  libatk1.0-0 libxcomposite1 libxcursor1 libxdamage1 \
  libgtk-3-0 libgbm1 libx11-xcb1 libxcb-icccm4 libxcb-image0 \
  libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxcb-xinerama0 \
  libpulse0 libwayland-client0 libwayland-cursor0 libwayland-egl1 \
  libdbus-1-3 libxcb-cursor0 && \
  groupadd --gid $USER_GID $USERNAME && \
  useradd --uid $USER_UID --gid $USER_GID -m $USERNAME && \
  echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Install Webots R2025a
RUN wget https://github.com/cyberbotics/webots/releases/download/R2025a/webots-R2025a-x86-64.tar.bz2 && \
  tar -xjf webots-R2025a-x86-64.tar.bz2 && \
  mv webots /usr/local/webots && \
  ln -s /usr/local/webots/webots /usr/bin/webots && \
  rm webots-R2025a-x86-64.tar.bz2

ENV DISPLAY=:1
ENV PATH=$PATH:/usr/local/webots
WORKDIR /workspace
USER vscode
