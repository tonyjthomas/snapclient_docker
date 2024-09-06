FROM debian:bookworm-slim

RUN apt-get update && apt-get install wget ca-certificates -y

RUN wget "https://github.com/badaix/snapcast/releases/download/v0.29.0/snapclient_0.29.0-1_arm64_bullseye.deb" -O /tmp/snapclient.deb
RUN dpkg -i --force-all /tmp/snapclient.deb
RUN apt-get -f install -y

ENTRYPOINT ["snapclient"]
