FROM bash:latest
WORKDIR /app
COPY . .
ENTRYPOINT ["bash", "app.sh"]
