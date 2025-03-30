Bug 001: Error in thehive_vm.tf file

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe plan
╷
│ Error: Missing required argument
│
│   on thehive_vm.tf line 12, in resource "proxmox_vm_qemu" "thehive_vm":
│   12:   disk {
│
│ The argument "slot" is required, but no definition was found.
╵
╷
│ Error: Missing required argument
│
│   on thehive_vm.tf line 18, in resource "proxmox_vm_qemu" "thehive_vm":
│   18:   network {
│
│ The argument "id" is required, but no definition was found.

Bug 002: Error in thehive_vm.tf file

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe plan
╷
│ Warning: Argument is deprecated
│
│   with proxmox_vm_qemu.thehive_vm,
│   on thehive_vm.tf line 7, in resource "proxmox_vm_qemu" "thehive_vm":
│    7:   cpu     = "host"
│
│ use 'cpu_type' instead
╵
╷
│ Error: "name", must only contain alphanumerics, hyphens and dots [thehive_vm]
│
│   with proxmox_vm_qemu.thehive_vm,
│   on thehive_vm.tf line 2, in resource "proxmox_vm_qemu" "thehive_vm":
│    2:   name        = "thehive_vm"
│
╵
╷
│ Error: type must be one of 'disk', 'cdrom', 'cloudinit'
│
│   with proxmox_vm_qemu.thehive_vm,
│   on thehive_vm.tf line 14, in resource "proxmox_vm_qemu" "thehive_vm":
│   14:     type    = "scsi"
│
╵
╷
│ Error: slot must be one of 'ide0', 'ide1', 'ide2', 'sata0', 'sata1', 'sata2', 'sata3', 'sata4', 'sata5', 'scsi0', 'scsi1', 'scsi2', 'scsi3', 'scsi4', 'scsi5', 'scsi6', 'scsi7', 'scsi8', 'scsi9', 'scsi10', 'scsi11', 'scsi12', 'scsi13', 'scsi14', 'scsi15', 'scsi16', 'scsi17', 'scsi18', 'scsi19', 'scsi20', 'scsi21', 'scsi22', 'scsi23', 'scsi24', 'scsi25', 'scsi26', 'scsi27', 'scsi28', 'scsi29', 'scsi30', 'virtio0', 'virtio1', 'virtio2', 'virtio3', 'virtio4', 'virtio5', 'virtio6', 'virtio7', 'virtio8', 'virtio9', 'virtio10', 'virtio11', 'virtio12', 'virtio13', 'virtio14', 'virtio15'
│
│   with proxmox_vm_qemu.thehive_vm,
│   on thehive_vm.tf line 16, in resource "proxmox_vm_qemu" "thehive_vm":
│   16:     slot    = 0  # Ajout du slot obligatoire
│

Bug 003: Error in thehive_vm.tf file

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe plan
╷
│ Error: type must be one of 'disk', 'cdrom', 'cloudinit'
│
│   with proxmox_vm_qemu.k3svm1,
│   on thehive_vm.tf line 14, in resource "proxmox_vm_qemu" "k3svm1":
│   14:     type    = "scsi"
│
╵
╷
│ Error: slot must be one of 'ide0', 'ide1', 'ide2', 'sata0', 'sata1', 'sata2', 'sata3', 'sata4', 'sata5', 'scsi0', 'scsi1', 'scsi2', 'scsi3', 'scsi4', 'scsi5', 'scsi6', 'scsi7', 'scsi8', 'scsi9', 'scsi10', 'scsi11', 'scsi12', 'scsi13', 'scsi14', 'scsi15', 'scsi16', 'scsi17', 'scsi18', 'scsi19', 'scsi20', 'scsi21', 'scsi22', 'scsi23', 'scsi24', 'scsi25', 'scsi26', 'scsi27', 'scsi28', 'scsi29', 'scsi30', 'virtio0', 'virtio1', 'virtio2', 'virtio3', 'virtio4', 'virtio5', 'virtio6', 'virtio7', 'virtio8', 'virtio9', 'virtio10', 'virtio11', 'virtio12', 'virtio13', 'virtio14', 'virtio15'
│
│   with proxmox_vm_qemu.k3svm1,
│   on thehive_vm.tf line 16, in resource "proxmox_vm_qemu" "k3svm1":
│   16:     slot    = 0  # Ajout du slot obligatoire

Bug 004: Error in thehive_vm.tf file

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe plan
╷
│ Error: Unsupported argument
│
│   on thehive_vm.tf line 37:
│   37:   tags = ["k3s", "kubernate"]
│
│ An argument named "tags" is not expected here.
╵
╷
│ Error: Argument or block definition required
│
│   on thehive_vm.tf line 38:
│   38: }
│
│ An argument or block definition is required here.
╵

Bug 005: Error in thehive_vm.tf file

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe plan   
╷
│ Warning: Argument is deprecated
│
│   with proxmox_vm_qemu.thehive_vm,
│   on thehive_vm.tf line 7, in resource "proxmox_vm_qemu" "thehive_vm":
│    7:   cpu     = "host"
│
│ use 'cpu_type' instead
╵
╷
│ Error: "name", must only contain alphanumerics, hyphens and dots [thehive_vm]
│
│   with proxmox_vm_qemu.thehive_vm,
│   on thehive_vm.tf line 2, in resource "proxmox_vm_qemu" "thehive_vm":
│    2:   name        = "thehive_vm"
│

Bug 006: Error in thehive_vm.tf file

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe plan
data.vault_generic_secret.proxmox: Reading...
data.vault_generic_secret.vault_token: Reading...

Planning failed. Terraform encountered an error while generating this plan.

╷
│ Error: no vault token set on Client
│
│   with data.vault_generic_secret.proxmox,
│   on main.tf line 15, in data "vault_generic_secret" "proxmox":
│   15: data "vault_generic_secret" "proxmox" {
│
╵
╷
│ Error: no vault token set on Client
│
│   with data.vault_generic_secret.vault_token,
│   on main.tf line 20, in data "vault_generic_secret" "vault_token":
│   20: data "vault_generic_secret" "vault_token" {
│

Apport solution Bug 006:

### **Erreur détectée**  
L'erreur **"no vault token set on Client"** indique que Terraform ne trouve pas le **Vault Token** nécessaire pour s'authentifier à Vault.

---

### **Solutions possibles :**

#### **1️⃣ Vérifier que `VAULT_TOKEN` est défini**
Terraform doit avoir accès à `VAULT_TOKEN`. Assure-toi que la variable d'environnement est bien définie avant d'exécuter `terraform plan` :  

##### **Sous Windows (PowerShell)**
```powershell
$env:VAULT_TOKEN="s3cr3t-tok3n"
```

##### **Sous Linux/macOS**
```bash
export VAULT_TOKEN="s3cr3t-tok3n"
```

---

#### **2️⃣ Vérifier la connexion à Vault**  
Avant de relancer Terraform, teste si Vault répond correctement :  

```bash
vault status
```
Si Vault est **scellé (`sealed`)**, tu dois d'abord le déverrouiller avec `vault operator unseal`.

Ensuite, essaie de récupérer les secrets manuellement :
```bash
vault kv get secret/proxmox
vault kv get secret/terraform
```
Si ces commandes échouent, vérifie les droits d'accès des secrets.

---

#### **3️⃣ Ajouter `VAULT_TOKEN` dans Terraform**  
Si tu ne veux pas passer par les variables d'environnement, ajoute ceci à ton provider Vault :

```hcl
provider "vault" {
  address = "http://192.168.1.26:8200"
  token   = "s3cr3t-tok3n"  # ⚠️ À éviter en production, préfère une variable d'environnement
}
```
⚠️ **Ne jamais stocker un token Vault en dur dans les fichiers Terraform** en production !

---

### **Recommandation Sécurité**  
Utilise **un rôle AppRole avec des credentials temporaires** plutôt que `VAULT_TOKEN` statique pour sécuriser l'accès.

Si le problème persiste, dis-moi où tu en es ! 🚀