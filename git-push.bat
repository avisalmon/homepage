@echo off
setlocal

:: Check if a commit message was provided
if "%~1"=="" (
    echo Please provide a commit message
    echo Usage: git-push.bat "Your commit message"
    exit /b 1
)

:: Add all changes
git add .

:: Commit with the provided message
git commit -m "%~1"

:: Push to main branch
git push origin main

:: If successful, show success message
if %ERRORLEVEL% EQU 0 (
    echo Successfully pushed changes to GitHub!
) else (
    echo An error occurred while pushing changes.
)

pause 