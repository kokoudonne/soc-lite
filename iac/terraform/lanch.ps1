# Charger les variables d'environnement depuis le fichier vault.env
$env:VAULT_ADDR = Get-Content -Path "vault.env" | Where-Object { $_ -match "^export VAULT_ADDR" } | ForEach-Object { $_.Split("=")[1].Trim() }
$env:VAULT_TOKEN = Get-Content -Path "vault.env" | Where-Object { $_ -match "^export VAULT_TOKEN" } | ForEach-Object { $_.Split("=")[1].Trim() }

# Vérifier la connexion à Vault (optionnel)
vault status

# Exécuter les commandes Terraform
terraform init
terraform apply -auto-approve
