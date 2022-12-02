FROM python:3.10-alpine

RUN apk add --no-cache gcc g++ musl-dev
WORKDIR /app

FROM /kti-infrastructure

COPY ./kti-infrastructure/init /var/lib/postgresql/docker-entrypoint-initdb.d