FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc g++ python3 nodejs make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
