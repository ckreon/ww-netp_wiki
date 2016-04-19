#!/bin/bash
set -x

timeout 120s bundle exec htmlproofer --allow-hash-href --assume-extension _site