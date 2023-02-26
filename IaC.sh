#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao_ -c "Joao" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim..."


