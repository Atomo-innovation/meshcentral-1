#!/usr/bin/env bash
set -euo pipefail

URL="${1:-rtsp://localhost:8554/live/stream}"

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "ffmpeg not found. Install it first (e.g. sudo apt install ffmpeg)."
  exit 1
fi

echo "Publishing demo stream to: ${URL}"
echo "Press Ctrl+C to stop."

# Video: test pattern. Audio: silent.
ffmpeg -re \
  -f lavfi -i testsrc=size=1280x720:rate=25 \
  -f lavfi -i anullsrc=channel_layout=stereo:sample_rate=44100 \
  -c:v libx264 -tune zerolatency -preset veryfast -pix_fmt yuv420p -g 50 \
  -c:a aac -b:a 128k \
  -f rtsp -rtsp_transport tcp "${URL}"

