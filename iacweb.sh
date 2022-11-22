#!/bin/bash

echo "Atualizando o sistema"

apt-get update
apt-get upgrade -y

echo "Instalando o APACHE"

apt-get install apache2 -y

echo "Instalando o UNZIP"

apt-get install unzip -y

echo "Baixando aplicação no GitHub"

cd /tmp
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "extraindo arquivos com UNZIP"

unzip main.zip

echo "Copiando arquivos para diretório APACHE"

cd linux-site-dio-main
cp -R * /var/www/html/ 

echo "Finalizado!"
