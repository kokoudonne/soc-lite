#!/bin/bash

# Charger les variables d'environnement depuis vault.env
export $(grep -v '^#' vault.env | xargs)

# Vérifier la connexion à Vault (optionnel)
vault status

# Exécuter les commandes Terraform
terraform init
terraform apply -auto-approve
