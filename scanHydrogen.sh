#!/bin/sh

read -p "Select an xyz File: " FILE

read -p "Pic a grid size.[50 - 300]: " gridLevel

read -p "Pic the closest hydrogen distance to surface.[1.1 - ]: " minDist
read -p "Pic the furthest hydrogen distance to surface.[1.2 - ]: " maxDist
read -p "Pic hydrogen sparseness.[0.1 - ]: " spa
read -p "Pic bubble radius. If bubble is too big, it will ignore valleys. If bubble is too small, it will create surface
inside.[2.0 - ]" b



./scanH $FILE $gridLevel ${spa} ${b} ${minDist} ${maxDist} > "$FILE"_${gridLevel}_${spa}_${b}_${minDist}_${maxDist}.Hscan 

    echo "${FILE}_${gridLevel}_${spa}_${b}_${minDist}_${maxDist}.Hscan was produced!"





