FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    bash \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

ENV PATH="/usr/local/bin:${PATH}"

CMD ["bash"]