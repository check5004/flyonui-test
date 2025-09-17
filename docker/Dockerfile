# syntax=docker/dockerfile:1.7

FROM node:20-alpine

RUN apk add --no-cache bash git libc6-compat python3 make g++

ENV PNPM_HOME="/pnpm" \
    PATH="/pnpm:$PATH"

WORKDIR /workspace

COPY scripts/ /scripts/
RUN chmod +x /scripts/*.sh || true

EXPOSE 3000 24678

ENTRYPOINT ["/scripts/entrypoint.sh"]
CMD ["dev"]


