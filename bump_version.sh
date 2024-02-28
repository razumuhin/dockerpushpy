#!/bin/bash

chmod +x bump_version.sh  # Betiği çalıştırılabilir hale getir

# Mevcut versiyon numarasını al
current_version=$(grep 'VERSION' Dockerfile | sed -n 's/.*VERSION="\([^"]*\)".*/\1/p')

# Versiyon numarasını artır
new_version=$(echo $current_version | awk -F. '{$NF = $NF + 1;} 1' OFS=. )

# Dockerfile'daki versiyon numarasını güncelle
sed -i.bak "s/VERSION=\"$current_version\"/VERSION=\"$new_version\"/g" Dockerfile

# Yeni versiyon numarasını çıktı olarak yazdır
echo $new_version

## Docker imajını etiketle ve Docker Hub'a it
#docker build -t razumuhin/py:$new_version .
#docker push razumuhin/py:$new_version
#docker tag razumuhin/py:$new_version razumuhin/py:latest
#docker push razumuhin/py:latest

