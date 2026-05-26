## MediaMTX (local RTSP server)

This folder lets you start a local RTSP server quickly using [MediaMTX](https://github.com/bluenviron/mediamtx).

### Start

```bash
cd mediamtx
docker compose up -d
```

### RTSP publish URLs

- `rtsp://localhost:8554/live/stream`
- `rtsp://<your-ip>:8554/live/stream`

### Quick demo publish (requires `ffmpeg`)

This publishes a test pattern + silent audio to the server:

```bash
cd mediamtx
./publish-demo.sh
```

### View the stream

- VLC: open `rtsp://localhost:8554/live/stream`

### Stop

```bash
cd mediamtx
docker compose down
```

