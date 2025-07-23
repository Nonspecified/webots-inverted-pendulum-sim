# .devcontainer/Dockerfile

FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies and Webots runtime libraries
RUN apt-get update && apt-get install -y \
  sudo curl wget git unzip python3 python3-pip \
  xvfb x11vnc fluxbox novnc websockify \
  libglu1-mesa libegl1 libxkbcommon0 libsndio7.0 \
  libgl1 libglib2.0-0 libnss3 libasound2t64 libxi6 libxrandr2 \
  libatk1.0-0 libxcomposite1 libxcursor1 libxdamage1 \
  libgtk-3-0 libgbm1 libx11-xcb1 libxcb-icccm4 libxcb-image0 \
  libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxcb-xinerama0 \
  libpulse0 libwayland-client0 libwayland-cursor0 libwayland-egl1 \
  libdbus-1-3 libxcb-cursor0 qt5-gtk-platformtheme qtbase5-dev \
  libxkbcommon-x11-0 && \
  rm -rf /var/lib/apt/lists/*

# Install Webots R2025a
RUN wget https://github.com/cyberbotics/webots/releases/download/R2025a/webots-R2025a-x86-64.tar.bz2 && \
  tar -xjf webots-R2025a-x86-64.tar.bz2 && \
  mv webots /usr/local/webots && \
  ln -s /usr/local/webots/webots /usr/bin/webots && \
  rm webots-R2025a-x86-64.tar.bz2

# Environment setup
ENV DISPLAY=:1
ENV PATH=$PATH:/usr/local/webots
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/usr/local/webots/lib/qt/plugins/platforms
ENV LD_LIBRARY_PATH=/usr/local/webots/lib:$LD_LIBRARY_PATH

# Set workspace
WORKDIR /workspace

# Ensure non-root user exists for Codespaces compatibility
RUN if ! id -u vscode > /dev/null 2>&1; then \
  useradd -m -s /bin/bash vscode && \
  echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers; \
fi

USER vscode
