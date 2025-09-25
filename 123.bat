@echo off
cd /d %~dp0
REM Safe sync: fetch and rebase, then only commit if there are changes.
git fetch origin
git rebase origin/main
IF %ERRORLEVEL% NEQ 0 (
	echo Rebase failed or there are local changes; aborting automatic commit.
	goto push
)

REM Stage all changes but only commit if there are staged differences.
git add -A
for /f "delims=" %%A in ('git status --porcelain') do set HAS_CHANGES=1
if defined HAS_CHANGES (
	git commit -m "Auto-sync"
	git push origin main
	if %errorlevel% neq 0 goto push
) else (
	echo No changes to commit.
)

goto end

:push
git push origin main

:end

REM Note: the project now uses `monthly-progress.md` and `Month*` folders.
