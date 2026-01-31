@echo off
cd /d %~dp0

git add .
git commit -m "daily update %date% %time%"

git pull --rebase origin main
IF ERRORLEVEL 1 (
  echo [ERROR] pull failed. fix conflicts then run again.
  pause
  exit /b 1
)

git push origin main
pause
