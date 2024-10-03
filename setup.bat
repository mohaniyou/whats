@echo off

REM Create the directory if it doesn't exist
if not exist "%USERPROFILE%\.streamlit" (
    mkdir "%USERPROFILE%\.streamlit"
)

REM Write the configuration to config.toml
(
    echo [server]
    echo port = %PORT%
    echo enableCORS = false
    echo headless = true
) > "%USERPROFILE%\.streamlit\config.toml"

echo Setup completed!
