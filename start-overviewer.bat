@ECHO OFF

if exist .\overviewer\overviewer.exe (
    .\overviewer\overviewer .\world .\overviewer\_output\ --rendermodes=smooth-lighting --forcerender
) else (
    echo Could not find "The Minecraft Overviewer"
    echo Download binaries from: http://overviewer.org/
    echo Stage the files to .\overviewer\
    echo Then try again
    pause
)

@ECHO ON