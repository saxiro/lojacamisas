#!/bin/sh
#Automatizando a utilização do Ruby on Rails
echo 'Escolha o comando:
1) source /home/saxiro/.rvm/scripts/rvm
2) rvm use 2.4.1@lojacamisetas
3) sair
'
read resposta

if ["$resposta" = "1"]; then
   [source /home/saxiro/.rvm/scripts/rvm]

elif ["$resposta" = "2"]; then [rvm use 2.4.1@lojacamisetas]

else
   echo "Se digitou 3 ou qualquer outra coisa, está fora!"

fi
