#!/bin/bash

# (a) Créer un réseau interne nommé tplb
docker network create --driver bridge tplb

# (b) Construire l’image basée sur le Dockerfile ci-dessus en la nommant im-nginx-lb
docker build -t im-nginx-lb .

# (c) Créer deux sous-dossiers shared1 et shared2
mkdir -p shared1 shared2

# (d) Placer des fichiers index.html dans les deux dossiers
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html

# (e) Lancer deux conteneurs basés sur l'image nginx, nommés nginx1 et nginx2, et fonctionnant en mode "detached"
docker run -d \
	--rm --name nginx1 \
	--network tplb \
	-p 81:80 -v \
	$(pwd)/shared1:/usr/share/nginx/html nginx
docker run -d \
	--rm --name nginx2 \
	--network tplb \
	-p 82:80 -v \
	$(pwd)/shared2:/usr/share/nginx/html nginx

# (f) Lancer le conteneur basé sur l’image im-nginx-lb, mappant le port 80 sur le port 83
docker run -d --rm --name nginx-lb --network tplb -p 83:80 im-nginx-lb

echo "Tous les conteneurs sont lancés et connectés au réseau tplb."

