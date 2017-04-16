@ECHO OFF

if exist .\minecraft_server.1.11.2.jar (
    echo Starting Minecraft Server
    java -Xmx1024M -Xms1024M -jar minecraft_server.1.11.2.jar nogui
) else (
    echo Could not find Minecraft Server
    echo download from https://minecraft.net/en/download/server
    pause
)

@ECHO ON
