# Start from Cyberbotics Webots (preinstalled R2025a)
FROM cyberbotics/webots:R2025a-ubuntu22.04

# Create expected user for Codespaces
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    sudo curl wget git python3 python3-pip \
    x11vnc fluxbox novnc websockify xvfb \
    libgtk-3-0 libnss3 libegl1 libasound2 libxi6 libxrandr2 \
    libatk1.0-0 libxcomposite1 libxcursor1 libxdamage1 libgbm1 libglu1-mesa \
    && groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Use Webots already installed in the image
ENV DISPLAY=:1
WORKDIR /workspace
USER vscode
