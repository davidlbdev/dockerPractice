FROM python:3.9-slim

WORKDIR /github/workspace

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY . /github/workspace

RUN chmod +x /github/workspace/.github/scripts/entrypoint.sh
RUN chmod +x /github/workspace/.github/scripts/update_readme.sh

ENTRYPOINT ["/github/workspace/.github/scripts/entrypoint.sh"]
