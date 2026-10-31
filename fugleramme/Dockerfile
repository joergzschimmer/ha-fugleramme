# Home Assistant OS test wrapper for the upstream Fugleramme container.
# The upstream image is ARM64-compatible; do not compile Fugleramme here.
FROM ghcr.io/arnegiacomo/fugleramme:0.29.0

USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends gosu \
    && rm -rf /var/lib/apt/lists/*

COPY start.sh /usr/local/bin/fugleramme-ha-start
RUN chmod 755 /usr/local/bin/fugleramme-ha-start

ENV TZ=Europe/Berlin \
    FUGLERAMME_CONTAINER=1 \
    FUGLERAMME_DETECTOR_KIND=birdweather \
    FUGLERAMME_MODE=collage \
    FUGLERAMME_PRIMARY_LANGUAGE=de \
    FUGLERAMME_WEB_ASPECT=16:9 \
    FUGLERAMME_REQUIRE_SIGN_IN=false

LABEL io.hass.version="0.29.0" \
      io.hass.type="app" \
      io.hass.arch="aarch64"

ENTRYPOINT ["/usr/local/bin/fugleramme-ha-start"]
