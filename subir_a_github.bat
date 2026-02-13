@echo off
echo ===================================================
echo   Subiendo proyecto a GitHub...
echo ===================================================
echo.
echo Comprobando si Git esta instalado...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Git no esta instalado o no se encuentra en el PATH.
    echo Por favor, instala Git desde https://git-scm.com/downloads y vuelve a ejecutar este script.
    pause
    exit /b
)

echo Inicializando repositorio...
git init
git branch -M main

echo Agregando archivos...
git add .
git commit -m "Entrega inicial: Museografia AR"

echo Configurando remoto...
git remote add origin https://github.com/andresfelipegomezbeltran-bit/museografia-de-trajes.git
git remote set-url origin https://github.com/andresfelipegomezbeltran-bit/museografia-de-trajes.git

echo Subiendo archivos...
git push -u origin main

echo.
echo ===================================================
echo   Proceso finalizado.
echo ===================================================
pause
