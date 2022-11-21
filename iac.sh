#!/bin/bash

echo "Creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating adm users..."

useradd carlos -c "Carlos Administrador" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria Administradora" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João Administrador" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

echo "Creating ven users..."

useradd debora -c "Debora Vendedora" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana  -c "Sebastiana Vendedora" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Vendedor" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

echo "Creating sec users..."

useradd josefina -c "Debora Secretária" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda Secretária" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Secretário" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

echo "Specifying permissions..."

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/  

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Finished!"
