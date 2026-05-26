## go2rtc (RTSP -> WebRTC gateway)

This runs a local go2rtc instance that Atomo Forge Suite uses to play RTSP streams in the browser via WebRTC.

### Start

```bash
cd go2rtc
docker compose up -d
```

### Check

Open go2rtc UI:

- `http://localhost:1984/`

### Stop

```bash
cd go2rtc
docker compose down
```

