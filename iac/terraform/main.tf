terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc6" # Remplacez par la dernière version disponible
    }
  }
}
provider "proxmox" {
  pm_api_url      = "https://pve.kcyberland.com/api2/json"
  pm_api_token_id = "terraform-prov@pve!terraform-token"
  pm_api_token_secret = "5b36dacd-1c41-4e41-ad9a-67a1ac08c547"
  pm_tls_insecure = true # À éviter en production, utilisez un certificat valide
}
