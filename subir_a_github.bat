@echo off
setlocal
echo ===================================================
echo   Subiendo proyecto a GitHub (Modo Automatico)
echo ===================================================
echo.

REM Intentar encontrar git
set GIT_CMD=git
%GIT_CMD% --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [INFO] Git global no encontrado. Buscando en GitHub Desktop...
    set GIT_CMD="C:\Users\User\AppData\Local\GitHubDesktop\app-3.5.4\resources\app\git\cmd\git.exe"
)

REM Verificar si encontramos git
%GIT_CMD% --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] No se pudo encontrar Git. Por favor instalalo manualmente.
    pause
    exit /b
)

echo Usando Git en: %GIT_CMD%
echo.

echo Inicializando repositorio...
%GIT_CMD% init
%GIT_CMD% branch -M main

echo Agregando archivos...
%GIT_CMD% add .
%GIT_CMD% commit -m "Auto-fix structure for GitHub Pages"

echo Configurando remoto...
%GIT_CMD% remote add origin https://github.com/andresfelipegomezbeltran-bit/museografia-de-trajes.git
%GIT_CMD% remote set-url origin https://github.com/andresfelipegomezbeltran-bit/museografia-de-trajes.git

echo Subiendo archivos (Forzando actualizacion)...
echo.
echo [ATENCION] Si te pide usuario y contrasea, usalos.
echo Si tienes GitHub Desktop abierto, quizas no te pida nada.
echo.
%GIT_CMD% push -u origin main --force

echo.
echo ===================================================
echo   Proceso finalizado.
echo   Verifica tu sitio en 1 minuto.
echo ===================================================
pause
