#!/bin/bash

echo "Atualizando o sistema"

apt update
apt upgrade -y

echo "Instalando o APACHE"

apt install apache2 -y

echo "Instalando o UNZIP"

apt install unzip -y

echo "Baixando aplicação no GitHub"

wget -c -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "extraindo arquivos com UNZIP"

unzip /tmp/*.zip

echo "Copiando arquivos para diretório APACHE"

cp /tmp/linux-site-dio-main/* /var/www/html/ 

echo "Finalizado!"
