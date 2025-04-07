#!/bin/bash

# While em bash

contador=1
while [ $contador -le 10 ]; do
    echo "Número $contador"
    contador=$(( contador + 1 ))
done

