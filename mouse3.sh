#!/bin/bash

mouse=$(xinput -list --name-only | grep Mouse)
speed=$(xinput --list-props "${mouse}" | grep -m 1 Speed | cut -d ' ' -f 1,2,3 | tr -d "\t"
)
echo "Para qual valor você deseja alterar a velocidade de seu mouse? Escreva um valor de -0 até 1."
echo "Separe as unidades com um . Exemplo: 0.5"
read value

xinput --set-prop "${mouse}" "${speed}" "${value}"

