#!/bin/bash
cd "$(dirname "$0")"
PORT=8000
python3 -m http.server "$PORT" >/dev/null 2>&1 &
PID=$!
sleep 1
open "http://localhost:$PORT/?vto=1"
echo "Luma experiment site is running at http://localhost:$PORT/"
echo "Control: http://localhost:$PORT/?vto=0"
echo "VTO:     http://localhost:$PORT/?vto=1"
echo "Press Control+C in this window to stop."
trap "kill $PID 2>/dev/null" EXIT
wait $PID
