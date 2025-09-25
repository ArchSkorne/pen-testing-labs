@echo off
cd /d %~dp0
git pull --rebase origin main
if %errorlevel% neq 0 goto push

git add .
git commit -am "Auto-sync"
git push origin main
if %errorlevel% neq 0 goto push

goto end

:push
git push origin main

:end
