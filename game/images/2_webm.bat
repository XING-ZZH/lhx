@echo off
set "CRF=32"
set "ABIT=64k"
set "SCALE=scale=1280:720"

for %%f in (*.mp4) do (
  echo Converting %%f ...
  ffmpeg -y -i "%%f" -vf %SCALE% -c:v libvpx-vp9 -crf %CRF% -b:v 0 -c:a libopus -b:a %ABIT% -ac 1 "%%~nf.webm"
)
pause