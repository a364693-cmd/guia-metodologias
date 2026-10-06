FROM bash:latest
WORKDIR /app
COPY . .
ENTRYPOINT ["/bin/bash", "app.sh"]
