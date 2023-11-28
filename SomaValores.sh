#!/bin/bash

###################################################################
#                                                                 #
#Nome: SomaValores.sh                                             # 
#                                                                 #
#Autor: Aguinaldo Américo                                         #  
#Data: 28/11/2023                                                 #
#                                                                 #
#Descrição: O script faz a soma de dois valores inseridos         #
#           pelo usuário.                                         #
#                                                                 #
#Uso: ./SomaValores.sh                                            #
#                                                                 #
###################################################################

read -p "Informe o valor 1: " VALOR1
read -p "Informe o valor 2: " VALOR2

echo
echo "A soma de $VALOR1 + $VALOR2 é $(expr $VALOR1 + $VALOR2)"

