#!/bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec 

echo "Diretórios criados"

echo "Criando GRUPOS"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados"

echo "Criando usuários e ja adicionando-os aos seus respectivos grupos"

echo "Criando usuários do grupo ADM"

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM

useradd maria -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM

useradd joao -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
echo "Usuários ADM criados"
echo "Criando usuários do grupo VEN"

useradd debora -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN

useradd roberto -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
echo "Usuários do grupo VEN criados"

echo "Criando usuários do grupo SEC"

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

useradd amanda -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

echo "Usuários do grupo SEC criados"

echo "Categorizando os grupos de cada diretório"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "grupos categorizados"

echo "Dando as permissões para cada um em seu respectivo dever"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões concedidas"

echo "Script finalizado"


