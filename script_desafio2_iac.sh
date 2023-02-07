#! /bin/bash

echo "Atualizando servidor..."
apt update -y
apt upgrade -y

echo "Instalando Servidor Apache..."
apt install apache2 -y

echo "Instalando Unzip..."
apt install unzip -y

echo "Baixando arquivos para site..."
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo arquivos..."
unzip main.zip

echo "Copiando arquivos para pasta padrao Apache..."
cd /tmp/linux-site-dio-main/
cp -R * /var/www/html/

echo "Fim!"
