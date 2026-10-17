#!/bin/sh
set -eu

exec liveproxy --host 0.0.0.0 --port "${PORT:-10000}"
