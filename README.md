# LiveProxy on Render (Blueprint starter)

This repository is a minimal Docker-based Render Blueprint starter for LiveProxy.

## Files

- `render.yaml` — Render Blueprint
- `Dockerfile` — container build
- `requirements.txt` — Python packages
- `start.sh` — starts LiveProxy on Render's `PORT`

## Deploy

1. Upload these files to the root of a GitHub repository.
2. Open https://dashboard.render.com/
3. Choose **New → Blueprint** and select the repository.
4. Review and deploy the service.

## Important limitations and security

- This is a starter template, not a verified production deployment. LiveProxy 2.0.0 is an older release; current Python dependencies and streaming sites may not be compatible.
- The service binds to `0.0.0.0` so Render can route traffic to it. This template does not add authentication or a command allowlist. Do not use it as a publicly exposed service until those protections are implemented.
- Render Free services can sleep after inactivity and have usage limits.
- This template does not create an M3U playlist or EPG for Kodi.
- The Blueprint's `region: frankfurt` is an example; change it if that region is not available for your account.

## Troubleshooting

Check the Render deployment logs if the build or startup fails. Confirm that the installed `liveproxy` package supports the command-line arguments in `start.sh`.
