#!/usr/bin/env bash

# 1. Definizione variabili
NUOVO_UTENTE="client"
PASSWORD_SEMPLICE="1234"
CARTELLA_DA_SPOSTARE="Coach"

echo "--- Inizio configurazione ambiente ---"

# 2. Creazione utente con cartella Home (-m)
# Usiamo 'id' per controllare se l'utente esiste già per evitare errori
if id "$NUOVO_UTENTE" >/dev/null 2>&1; then
    echo "L'utente $NUOVO_UTENTE esiste già."
else
    echo "Creazione utente: $NUOVO_UTENTE..."
    useradd -m "$NUOVO_UTENTE"
    # Impostiamo la password in modo non interattivo
    echo "$NUOVO_UTENTE:$PASSWORD_SEMPLICE" | chpasswd
    echo "Password impostata con successo."
fi

# 3. Spostamento della directory Coach
if [ -d "$CARTELLA_DA_SPOSTARE" ]; then
    echo "Spostamento di $CARTELLA_DA_SPOSTARE in /home/$NUOVO_UTENTE/..."
    mv "$CARTELLA_DA_SPOSTARE" "/home/$NUOVO_UTENTE/"
    
    # 4. Cambio del proprietario (Fondamentale!)
    # Quando sposti qualcosa come root, il proprietario rimane root.
    # Dobbiamo darne il possesso al nuovo utente client.
    chown -R "$NUOVO_UTENTE:$NUOVO_UTENTE" "/home/$NUOVO_UTENTE/$CARTELLA_DA_SPOSTARE"
    echo "Spostamento completato e permessi aggiornati."
else
    echo "Errore: la directory $CARTELLA_DA_SPOSTARE non è stata trovata qui."
fi

echo "--- Configurazione terminata ---"
