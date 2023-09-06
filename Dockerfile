FROM nikolaik/python-nodejs:python3.9-nodejs19-bullseye

ARG SSL_KEYSTORE_PASSWORD
USER root

WORKDIR /workspaces

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
  gcc \
  g++ \
  git \
  make \
  python3-dev \
  python3-venv \
  unzip \
  wget \
  gfortran \
  musl-dev \
  glibc-source \
  # mysql-server \
  postgresql \
  && rm -rf /var/lib/apt/lists/* \
  && wget https://github.com/duckdb/duckdb/releases/download/v0.6.0/duckdb_cli-linux-amd64.zip && unzip duckdb_cli-linux-amd64.zip \
  && pip install --no-cache-dir meltano jupyterlab duckdb jupysql duckdb-engine openpyxl

COPY meltano.yml ./

RUN meltano lock --update --all

RUN meltano add utility superset

# RUN meltano install utility superset