FROM python:3.9-slim

WORKDIR /github/workspace

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["bash", "/github/workspace/.github/scripts/entrypoint.sh"]
