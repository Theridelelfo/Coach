#!/usr/bin/env bash

# Questo è il mio primo script bash
# Assicurati che nei tuoi ambiente sia presente Bash. In un Dokerfile:

# alpine	             RUN apk add --no-cache bash
# ubuntu / debian	     RUN apt-get update && apt-get install -y bash
# python:slim	         RUN apt-get update && apt-get install -y bash

echo $SHELL
bash --version
echo "Hello World! Sto preparando l'ambiente per i miei agenti."

# Mostra chi sta eseguendo lo script (per capire se sei root o user)
echo "Attualmente sto lavorando come l'utente: $(whoami)"
