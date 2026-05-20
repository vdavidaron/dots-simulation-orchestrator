FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends git gcc g++ && rm -rf /var/lib/apt/lists/*

RUN mkdir /app/
WORKDIR /app

COPY . .
RUN pip install ./

EXPOSE 8001

ENTRYPOINT ["python3", "main.py"]
