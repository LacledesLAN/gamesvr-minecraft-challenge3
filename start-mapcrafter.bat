@ECHO OFF

if exist .\mapcrafter_win64\mapcrafter.exe (
    .\mapcrafter_win64\mapcrafter.exe -c .\mapcrafter_win64\render.conf --render-force-all
) else (
    echo Could not find "Mapcrafter"
    echo Download binaries from: https://mapcrafter.org/index
    echo Stage the files to .\mapcrafter_win64\
    echo Then try again
    pause
)

@ECHO ON