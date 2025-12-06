#!/bin/bash
python3 -m http.server 8000 &
sleep 1
open "http://localhost:8000/?file=examples/self-test.sarif"
wait
