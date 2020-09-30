#! /bin/bash

t=0
count=0

for c in {0..5}
do
	echo "Digite um numero: "
	read n
	if (($n % 2 == 0))
	then
		count=$((count+1))
		t=$((t+n))
	fi
done
echo "Você informou $count números pares"
echo "O total da soma dos números pares é: $t"

