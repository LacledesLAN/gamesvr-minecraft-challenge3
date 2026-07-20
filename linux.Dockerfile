FROM lacledeslan/gamesvr-minecraft

ARG BUILD_DATE=unspecified \
    BUILD_NODE=unspecified \
    GIT_REVISION=unspecified

LABEL architecture="amd64" \
      com.lacledeslan.build-node=$BUILD_NODE \
      maintainer="Laclede's LAN <contact@lacledeslan.com>" \
      org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.description="LL Minecraft Challenge 3 Dedicated Server" \
      org.opencontainers.image.revision=$GIT_REVISION \
      org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-minecraft-challenge3" \
      org.opencontainers.image.vendor="Laclede's LAN"

COPY --chown=Minecraft:root /world /app/world

COPY --chown=Minecraft:root *.json /app/

COPY --chown=Minecraft:root server.properties /app/
