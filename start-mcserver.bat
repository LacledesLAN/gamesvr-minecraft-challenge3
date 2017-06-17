@ECHO OFF

where java
if %errorlevel% equ 1 (
	echo "Java must be installed"
	pause
) else (
	if exist .\minecraft_server.1.12.jar (
		echo Starting Minecraft Server
		java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.jar nogui
	) else (
		echo Could not find Minecraft Server
		echo download from https://minecraft.net/en/download/server
		pause
	)
)

@ECHO ON