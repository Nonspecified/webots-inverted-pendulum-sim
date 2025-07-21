# Start from Cyberbotics' official Webots image (Ubuntu 22.04 + Webots preinstalled)
FROM cyberbotics/webots:R2025a-ubuntu22.04

# Set environment to prevent interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Install noVNC, GUI, VNC, and helper tools
RUN apt-get update && apt-get install -y \
  python3 python3-pip \
  x11vnc fluxbox novnc websockify xvfb \
  libnss3 libegl1 libasound2 libxi6 libxrandr2 \
  libatk1.0-0 libxcomposite1 libxcursor1 libxdamage1 \
  libgtk-3-0 libgbm1 libglu1-mesa \
  supervisor git unzip curl wget

# Set DISPLAY environment variable for GUI apps
ENV DISPLAY=:1

# Set working directory inside container
WORKDIR /workspace
