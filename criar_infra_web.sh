#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando servidor Apache HTTP Server"
apt-get install apache2 -y

echo "Instalando o UnZIP"
apt-get install unzip -y

echo "Baixando e extraindo a aplicação na pasta /tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip main.zip

echo "Copiando os arquivos da aplicação para o diretório padrão do apache"
cd linux-site-dio-main
cp -R * /var/www/html/
