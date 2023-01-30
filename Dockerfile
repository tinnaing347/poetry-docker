FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_NO_INTERACTION=1

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        curl \
        build-essential \
        git \ 
    && curl -sSL https://install.python-poetry.org | python3 - --version 1.3.2 \
    && pip install -U pip
