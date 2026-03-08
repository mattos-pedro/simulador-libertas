#!/bin/bash
# ===================================================
#  Simulador Libertas - Build & Deploy
#  Fundacao Libertas - GEINV
# ===================================================

echo ""
echo "========================================"
echo " Simulador Libertas - Build"
echo "========================================"
echo ""

# 1. Instalar dependencias
echo "[1/3] Instalando dependencias..."
npm install || { echo "ERRO: npm install falhou. Instale o Node.js: https://nodejs.org"; exit 1; }

# 2. Build
echo ""
echo "[2/3] Gerando build otimizado..."
npm run build || { echo "ERRO: Build falhou."; exit 1; }

# 3. Pronto
echo ""
echo "[3/3] Build concluido!"
echo ""
echo "========================================"
echo " PRONTO!"
echo "========================================"
echo ""
echo " Os arquivos estao em: dist/"
echo ""
echo " Para testar: npm run preview"
echo " Para deploy: npx gh-pages -d dist"
echo ""
