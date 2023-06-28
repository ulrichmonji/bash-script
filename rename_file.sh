#!/bin/bash
# Ce script permets de renommer tous les fichier .conf en .conf.old dans un répertoire donnée
# Répertoire cible
repertoire="/path/to/target/folder"
# Parcourir tous les fichiers avec l'extension .conf dans le répertoire
for fichier in "$repertoire"/*.conf; do
    # Vérifier si le fichier existe
    if [ -e "$fichier" ]; then
        # Modifier l'extension en .conf.old
        nouveau_fichier="${fichier%.conf}.conf.old"
        mv "$fichier" "$nouveau_fichier"
        echo "Changement d'extension : $fichier -> $nouveau_fichier"
    fi
done
