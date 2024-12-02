#!/bin/bash

# Diretório de instalação para templates
SHARE_DIR="/usr/local/share/wordpress-management"

echo "Instalando comandos no sistema..."
cp bin/* /usr/local/bin/ || { echo "Erro ao copiar scripts para /usr/local/bin."; exit 1; }
chmod +x /usr/local/bin/*

echo "Instalando templates no sistema..."
mkdir -p "$SHARE_DIR" || { echo "Erro ao criar diretório para templates."; exit 1; }
cp -r templates/* "$SHARE_DIR/" || { echo "Erro ao copiar templates para $SHARE_DIR."; exit 1; }

echo "Comandos e templates instalados com sucesso!"
echo "Templates estão localizados em $SHARE_DIR"