FROM cyberbotics/webots:R2023b-ubuntu

# Install Python and GUI/VNC tools
RUN apt-get update && apt-get install -y \
  python3-pip \
  x11vnc \
  fluxbox \
  novnc \
  websockify \
  wget \
  supervisor

# Set up noVNC
RUN mkdir -p /opt/novnc/utils/websockify
WORKDIR /opt/novnc
RUN wget https://github.com/novnc/noVNC/archive/refs/heads/master.zip && \
    unzip master.zip && mv noVNC-master/* . && rm -rf noVNC-master master.zip
RUN wget https://github.com/novnc/websockify/archive/refs/heads/master.zip && \
    unzip master.zip && mv websockify-master/* utils/websockify && rm -rf websockify-master master.zip

# Set VNC password to 'webots' and configure display
RUN mkdir -p /root/.vnc && \
    x11vnc -storepasswd webots /root/.vnc/passwd

# Expose the VNC ports
EXPOSE 5901 6080

# Create workspace directory
WORKDIR /workspace
