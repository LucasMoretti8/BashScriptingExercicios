#! /bin/bash

total=0
mil=0
menor=0
count=0
while true 
do
        count=$((count+1))
        echo "Digite o nome do $countº produto: "
        read nome
        echo "Digite o Valor do produto:"
        read valor
        total=$((total+valor))
	if (( $valor > 1000))
	then
                mil=$((mil+1))
	fi
		if [ $count -eq 1 ]	
		then
			menor=$valor
                else
                        if [ $valor -lt $menor  ]
                        then
                                menor=$valor
                        fi
                fi
        
        echo "Deseja cadastrar outro produto? [S/N]"
        read continua
	case $continua in
        [Ss]* ) continue;;
        [Nn]* ) break;;
	esac
done
echo "Resumo da compra: Total gasto: R$ $total, $mil produtos custaram mais do que R$ 1000, E o produto mais barato da compra foi R$ $menor"

