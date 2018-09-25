#!/usr/bin/env bash
(sleep 1; echo "list";\
sleep 1; echo "start stop";\
) | telnet 127.0.0.1 8000