#!/bin/bash

echo "Criando diretórios..."

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Configurando os diretórios por grupos..."
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Criando usuários do grupo ADM..."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
echo "Criando usuários do grupo VEN..."
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
echo "Criando usuários do grupo SEC..."
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

echo "Configurando as permissões..."

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Infraestrutura finalizada!"