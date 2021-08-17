FROM python:3.8.11-slim
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_VERSION=1.1.7 \
    POETRY_NO_INTERACTION=1 \
    PATH="/root/.poetry/bin:$PATH"


RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        curl \
        build-essential \ 
    && curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python \
    && pip install -U pip
