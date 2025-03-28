terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc6"  # Vérifie la dernière version
    }
  }
}

provider "vault" {
  address = "http://192.168.1.26:8200"  # Adresse de ton serveur Vault
}

# Récupérer les secrets Proxmox
data "vault_generic_secret" "proxmox" {
  path = "secret/proxmox"  # Le chemin où tu as stocké les secrets Proxmox
}

# Récupérer le secret Vault Token
data "vault_generic_secret" "vault_token" {
  path = "secret/terraform"  # Le chemin où tu as stocké la clé VAULT_TOKEN
}

# Configuration du provider Proxmox
provider "proxmox" {
  pm_api_url      = data.vault_generic_secret.proxmox.data["pm_api_url"]
  pm_api_token_id = data.vault_generic_secret.proxmox.data["pm_api_token_id"]
  pm_api_token_secret = data.vault_generic_secret.proxmox.data["pm_api_token_secret"]
  pm_tls_insecure = true  # ⚠️ À désactiver en production
}
