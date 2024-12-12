#!/bin/bash

echo "Atualizando server"
apt-get update
apt-get upgrade -y

echo "Instalando Apache"
apt-get install apache2 -y

echo "Instalando Unzip."
apt-get install unzip -y

echo "indo para o diretório de arquivos temp"
cd /tmp

echo "Baixando os arquivos"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo main"
unzip main.zip

echo "Copiando a aplicação para o diretório Apache"
cd linux-site-dio-main
cp -R * /var/www/html

echo "Feito."
