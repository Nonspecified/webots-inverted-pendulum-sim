#!/bin/bash

echo "🔧 Starting virtual display on :1 ..."
Xvfb :1 -screen 0 1280x800x24 &

export DISPLAY=:1
echo "🖥️  Starting Fluxbox window manager ..."
fluxbox &

echo "🚀 Launching Webots..."
webots &

echo "🔒 Starting VNC server (password: webots)..."
x11vnc -forever -usepw -display :1 -rfbport 5901 &

echo "🌐 Launching noVNC (browser access)..."
websockify --web=/opt/novnc --wrap-mode=ignore 6080 localhost:5901
