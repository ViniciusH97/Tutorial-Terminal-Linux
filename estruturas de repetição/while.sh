#!/bin/bash

# While em bash exemplo

contador=1
while [ $contador -le 10 ]; do
    echo "Número $contador"
    contador=$(( contador + 1 ))
done

