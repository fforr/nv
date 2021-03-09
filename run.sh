#!/bin/bash
set -ex

cat >> chr << EOF
/usr/bin/chromium --no-sandbox --disable-dev-shm-usage --disable-setuid-sandbox --no-zygote --single-process --no-pings --no-first-run --disable-accelerated-2d-canvas --disable-gpu
EOF

exec supervisord -c /app/supervisord.conf
