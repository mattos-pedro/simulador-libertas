@echo off
REM ===================================================
REM  Simulador Libertas - Build & Deploy
REM  Fundacao Libertas - GEINV
REM ===================================================
REM
REM  PRE-REQUISITO: Node.js instalado
REM  Download: https://nodejs.org (versao LTS)
REM
REM  COMO USAR:
REM  1. Abra o Prompt de Comando (cmd) ou PowerShell
REM  2. Navegue ate a pasta: cd simulador-vite
REM  3. Execute: build.bat
REM  4. Os arquivos prontos estarao na pasta "dist"
REM  5. Suba a pasta "dist" no GitHub Pages
REM
REM ===================================================

echo.
echo ========================================
echo  Simulador Libertas - Build
echo ========================================
echo.

REM 1. Instalar dependencias
echo [1/3] Instalando dependencias...
call npm install
if errorlevel 1 (
    echo.
    echo ERRO: npm install falhou.
    echo Verifique se o Node.js esta instalado: node --version
    echo Download: https://nodejs.org
    pause
    exit /b 1
)

REM 2. Build
echo.
echo [2/3] Gerando build otimizado...
call npm run build
if errorlevel 1 (
    echo.
    echo ERRO: Build falhou. Verifique os erros acima.
    pause
    exit /b 1
)

REM 3. Pronto
echo.
echo [3/3] Build concluido!
echo.
echo ========================================
echo  PRONTO!
echo ========================================
echo.
echo  Os arquivos estao em: dist\
echo.
echo  Para testar localmente:
echo    npm run preview
echo.
echo  Para subir no GitHub Pages:
echo    1. Copie o conteudo da pasta "dist"
echo    2. Suba no repositorio simulador-libertas
echo    3. Ou use: npx gh-pages -d dist
echo.
echo ========================================
pause
