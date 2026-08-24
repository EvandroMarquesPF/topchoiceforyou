@echo off
title TopChoiceForYou - Static Site
color 09
cd /d "%~dp0"

echo ============================================
echo   TOPCHOICEFORYOU - Iniciando...
echo ============================================
echo.

:: Verificar Python
where python >nul 2>&1
if %errorlevel% equ 0 goto python

echo [INFO] Python nao encontrado no PATH. Tentando com npx serve...
where npx >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERRO] Nem Python nem Node.js/npx estao instalados!
    echo [INFO] Instale Python em: https://python.org ou Node.js em: https://nodejs.org
    pause
    exit /b 1
)
echo [OK] Node.js/npx encontrado.
echo.
echo [INFO] Iniciando servidor estatico em http://localhost:8080
echo [INFO] Pressione Ctrl+C para encerrar.
echo.
start "" cmd /c "timeout /t 4 /nobreak >nul && start http://localhost:8080"
npx --yes serve -l 8080
goto fim

:python
for /f "tokens=*" %%v in ('python --version 2^>^&1') do set PY_VER=%%v
echo [OK] Python encontrado (%PY_VER%).
echo.
echo [INFO] Iniciando servidor estatico em http://localhost:8080
echo [INFO] Pressione Ctrl+C para encerrar.
echo.
start "" cmd /c "timeout /t 4 /nobreak >nul && start http://localhost:8080"
python -m http.server 8080

:fim
if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Servidor encerrado com erro.
    pause
)
