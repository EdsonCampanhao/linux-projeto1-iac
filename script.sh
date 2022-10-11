#!/bin/bash

echo "<-------------criando os diretorios /publico /admin /ven e /sec------------>"
mkdir -v publico adm ven sec

echo "criando os grupos GRP_ADM  GRP_VEN e  GRP_SEC"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "mudando o dono dos grupos para o root"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "criando e atribuindo os funcionarios aos grupos"
useradd carlos -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt 123)
useradd maria -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt 123)

useradd joao -m -G GRP_ADM


useradd debora -m -G GRP_VEN
useradd sabastiana -m -G GRP_VEN
useradd roberto -m -G GRP_VEN

useradd josefina -m -G GRP_SEC
useradd amanda -m -G GRP_SEC
useradd rogerio -m -G GRP_SEC

echo "especificando permicoes "
chmod 770 adm
chmod 770 ven
chmod 770 sec 
chmod 777 publico

echo "fim :)

"
