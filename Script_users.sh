#!/bin/bash

echo "Criando diretórios ..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios ... "
useradd carlos -c "Carlos ADM" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_ADM
useradd maria -c "Maria ADM" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_ADM
useradd joao -c "Joao ADM" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_ADM

useradd debora -c "Débora VENDAS" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_VEN
useradd sebastiana -c "Sebastiana VENDAS" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_VEN
useradd roberto -c "Roberto VENDAS" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) GRP_VEN

useradd josefina -c "Josefina SEC" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_SEC
useradd amanda -c "Amanda SEC" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_SEC
useradd rogerio -c "Rogério SEC" -m -s /bin/bash  -p $(openssl passwd -crypt Senha123) -g GRP_SEC

echo "Atribuindo permissões nos diretórios ... "

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/s
chwon root:GRP_SEC /sec/

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/

echo "Usuários criado com sucesso, todas permissões foram atribuídas conforme o solicitado ..."