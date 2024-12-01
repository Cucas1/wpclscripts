#!/bin/bash

# Instalar scripts no sistema
echo "Instalando comandos no sistema..."
cp bin/* /usr/local/bin/
chmod +x /usr/local/bin/*

echo "Comandos disponíveis:"
echo " - initsetup"
echo " - createinst"
echo " - pauseinst"
echo " - resumeinst"
echo " - removeinst"
