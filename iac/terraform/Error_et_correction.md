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

Resultat de la commande `terraform plan` après correction des bugs : 

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe plan
data.vault_generic_secret.vault_token: Reading...
data.vault_generic_secret.proxmox: Reading...
data.vault_generic_secret.proxmox: Read complete after 1s [id=secret/proxmox]
data.vault_generic_secret.vault_token: Read complete after 1s [id=secret/terraform]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # proxmox_vm_qemu.k3svm will be created
  + resource "proxmox_vm_qemu" "k3svm" {
      + additional_wait        = 5
      + agent                  = 0
      + automatic_reboot       = true
      + balloon                = 0
      + bios                   = "seabios"
      + boot                   = (known after apply)
      + bootdisk               = (known after apply)
      + cipassword             = (sensitive value)
      + ciupgrade              = false
      + ciuser                 = "admin"
      + clone                  = "debian-template"
      + clone_wait             = 10
      + cores                  = 2
      + cpu_type               = "host"
      + default_ipv4_address   = (known after apply)
      + default_ipv6_address   = (known after apply)
      + define_connection_info = true
      + desc                   = "Managed by Terraform."
      + force_create           = false
      + full_clone             = true
      + hotplug                = "network,disk,usb"
      + id                     = (known after apply)
      + ipconfig0              = "ip=192.168.1.100/24,gw=192.168.1.1"
      + kvm                    = true
      + linked_vmid            = (known after apply)
      + memory                 = 2048
      + name                   = "k3svm"
      + onboot                 = false
      + os_type                = "cloud-init"
      + protection             = false
      + reboot_required        = (known after apply)
      + scsihw                 = "lsi"
      + skip_ipv4              = false
      + skip_ipv6              = false
      + sockets                = 1
      + ssh_host               = (known after apply)
      + ssh_port               = (known after apply)
      + sshkeys                = <<-EOT
            ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzFD9quYfNgk1UV1cEeUnrz3ZZEC0i0Bx8O8whT+ri3Ywv3pF/cuSiVAV9eiwVq95bxVk7311GawxDh13e+hodT4KzE1kgPusPXv8c4d08ZRgebhHRm48WgH1fJmrRiyhzTNs9rAoTG3p6NauVwNhKjnW1kPtB7UVC/5aD24idtF9JC9TY25J4VOrGfKW0tkdUxPxTKCIbpeIKvu/lz3wxKsR6fXNXBe+54F+UrZY9FaW1/toAq7Kfzp0gXnH2aD1cUAIhC41ZvtJa45D0WO9/r8RQ8W4AJOWAApG/MDwoGdcbstCCHMVCXAVrQXu64c0Wfc3UDLxIHmKKvVYZMVQ7LDOm5P5j0/ED3eqz5fPX+yd2MiolrP7z0+li7IcPPeCCUq6xF2cZZhtQdqIKbmRoyFrLpoG6Oivmn70cN8XpawlrihIbPZQzT3Mu4qQT3V867YdK84n74x0//RJE2z4Zi6tfa0PZj42iaPyDWWT+n7BCUUQM9B8IoVADv+Chx1c= kokou@fcconsulting_pc
        EOT
      + tablet                 = true
      + tags                   = (known after apply)
      + target_node            = "pve02"
      + unused_disk            = (known after apply)
      + vcpus                  = 0
      + vm_state               = "running"
      + vmid                   = (known after apply)

      + disk {
          + backup               = true
          + id                   = (known after apply)
          + iops_r_burst         = 0
          + iops_r_burst_length  = 0
          + iops_r_concurrent    = 0
          + iops_wr_burst        = 0
          + iops_wr_burst_length = 0
          + iops_wr_concurrent   = 0
          + linked_disk_id       = (known after apply)
          + mbps_r_burst         = 0
          + mbps_r_concurrent    = 0
          + mbps_wr_burst        = 0
          + mbps_wr_concurrent   = 0
          + passthrough          = false
          + size                 = "50G"
          + slot                 = "scsi0"
          + storage              = "diskext4to"
          + type                 = "disk"
        }

      + network {
          + bridge    = "vmbr0"
          + firewall  = false
          + id        = 0
          + link_down = false
          + macaddr   = (known after apply)
          + model     = "virtio"
        }

      + smbios (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

Tout semble bien configuré, et Terraform est prêt à appliquer le plan pour créer la VM **k3svm** sur ton Proxmox. Quelques points à vérifier avant d'exécuter `terraform apply` :  

1. **Stockage (`diskext4to`)** : Assure-toi que le nom du stockage est correct et disponible sur **pve02**. Tu peux le vérifier via `pvesm status`.  

2. **Template `debian-template`** : Vérifie qu'il est bien configuré avec **Cloud-Init**. Sinon, la configuration réseau et SSH risque de ne pas s'appliquer correctement.  

3. **Clé SSH** : L'ajout de la clé publique SSH est bien configuré. Assure-toi que tu pourras te connecter avec `ssh admin@192.168.1.100`.  

4. **Vérification réseau** : Vérifie que l’IP statique **192.168.1.100** ne soit pas déjà utilisée sur ton réseau.  

Si tout est bon, lance :  

```sh
terraform apply
```  

Si tu veux valider le plan avant l’application, utilise :  

```sh
terraform apply -auto-approve
```  

Bug 007: Error in thehive_vm.tf file

PS C:\Users\kokou\Nextcloud3\soc-lite\iac\terraform> .\terraform.exe apply
data.vault_generic_secret.proxmox: Reading...
data.vault_generic_secret.vault_token: Reading...
data.vault_generic_secret.proxmox: Read complete after 0s [id=secret/proxmox]
data.vault_generic_secret.vault_token: Read complete after 0s [id=secret/terraform]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # proxmox_vm_qemu.k3svm will be created
  + resource "proxmox_vm_qemu" "k3svm" {
      + additional_wait        = 5
      + agent                  = 0
      + automatic_reboot       = true
      + balloon                = 0
      + bios                   = "seabios"
      + boot                   = (known after apply)
      + bootdisk               = (known after apply)
      + cipassword             = (sensitive value)
      + ciupgrade              = false
      + ciuser                 = "admin"
      + clone                  = "debian-template"
      + clone_wait             = 10
      + cores                  = 2
      + cpu_type               = "host"
      + default_ipv4_address   = (known after apply)
      + default_ipv6_address   = (known after apply)
      + define_connection_info = true
      + desc                   = "Managed by Terraform."
      + force_create           = false
      + full_clone             = true
      + hotplug                = "network,disk,usb"
      + id                     = (known after apply)
      + ipconfig0              = "ip=192.168.1.100/24,gw=192.168.1.1"
      + kvm                    = true
      + linked_vmid            = (known after apply)
      + memory                 = 2048
      + name                   = "k3svm"
      + onboot                 = false
      + os_type                = "cloud-init"
      + protection             = false
      + reboot_required        = (known after apply)
      + scsihw                 = "lsi"
      + skip_ipv4              = false
      + skip_ipv6              = false
      + sockets                = 1
      + ssh_host               = (known after apply)
      + ssh_port               = (known after apply)
      + sshkeys                = <<-EOT
            ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzFD9quYfNgk1UV1cEeUnrz3ZZEC0i0Bx8O8whT+ri3Ywv3pF/cuSiVAV9eiwVq95bxVk7311GawxDh13e+hodT4KzE1kgPusPXv8c4d08ZRgebhHRm48WgH1fJmrRiyhzTNs9rAoTG3p6NauVwNhKjnW1kPtB7UVC/5aD24idtF9JC9TY25J4VOrGfKW0tkdUxPxTKCIbpeIKvu/lz3wxKsR6fXNXBe+54F+UrZY9FaW1/toAq7Kfzp0gXnH2aD1cUAIhC41ZvtJa45D0WO9/r8RQ8W4AJOWAApG/MDwoGdcbstCCHMVCXAVrQXu64c0Wfc3UDLxIHmKKvVYZMVQ7LDOm5P5j0/ED3eqz5fPX+yd2MiolrP7z0+li7IcPPeCCUq6xF2cZZhtQdqIKbmRoyFrLpoG6Oivmn70cN8XpawlrihIbPZQzT3Mu4qQT3V867YdK84n74x0//RJE2z4Zi6tfa0PZj42iaPyDWWT+n7BCUUQM9B8IoVADv+Chx1c= kokou@fcconsulting_pc
        EOT
      + tablet                 = true
      + tags                   = (known after apply)
      + target_node            = "pve02"
      + unused_disk            = (known after apply)
      + vcpus                  = 0
      + vm_state               = "running"
      + vmid                   = (known after apply)

      + disk {
          + backup               = true
          + id                   = (known after apply)
          + iops_r_burst         = 0
          + iops_r_burst_length  = 0
          + iops_r_concurrent    = 0
          + iops_wr_burst        = 0
          + iops_wr_burst_length = 0
          + iops_wr_concurrent   = 0
          + linked_disk_id       = (known after apply)
          + mbps_r_burst         = 0
          + mbps_r_concurrent    = 0
          + mbps_wr_burst        = 0
          + mbps_wr_concurrent   = 0
          + passthrough          = false
          + size                 = "50G"
          + slot                 = "scsi0"
          + storage              = "diskext4to"
          + type                 = "disk"
        }

      + network {
          + bridge    = "vmbr0"
          + firewall  = false
          + id        = 0
          + link_down = false
          + macaddr   = (known after apply)
          + model     = "virtio"
        }

      + smbios (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

proxmox_vm_qemu.k3svm: Creating...
╷
│ Error: vm 'debian-template' not found
│
│   with proxmox_vm_qemu.k3svm,
│   on thehive_vm.tf line 1, in resource "proxmox_vm_qemu" "k3svm":
│    1: resource "proxmox_vm_qemu" "k3svm" {

Apport solution Bug 007:

télécharger l'image de la VM **debian-template** sur le serveur Proxmox. Voici comment procéder :

### 1. Vérifier l'existence du modèle
- Connecte-toi à l'interface web de **Proxmox** (`https://pve02:8006`).
- Vérifie dans **"Datacenter" > "pve02" > "VMs"** que **debian-template** existe bien.
- Si tu ne le vois pas, exécute cette commande sur le nœud Proxmox :  
  ```bash
  qm list
  ```
  Cela affichera la liste des VM existantes.

### 2. Vérifier si c'est un vrai template
Si la VM existe mais que Terraform ne la trouve pas, vérifie qu'elle est bien définie comme **template** :  
```bash
qm config <vmid>
```
Si elle n'est pas un template, convertis-la :  
```bash
qm template <vmid>
```

### 3. Vérifier le stockage
- Si ton **template** est stocké sur un espace différent (`local`, `local-lvm`, `diskext4to`, etc.), précise son **storage** dans Terraform :  
  ```hcl
  clone = "debian-template"
  pool = "nom_du_pool_si_utilisé"
  storage = "nom_du_stockage"
  ```

### 4. Vérifier les permissions
Si **Vault** gère tes credentials, assure-toi que ton token a bien accès aux ressources. Connecte-toi à Proxmox et teste la connexion :  
```bash
pvesh get /nodes/pve02/qemu
```

Si ça échoue, ton compte peut ne pas avoir **les droits suffisants** (`VM.Audit`, `VM.Clone`).

### 5. Vérifier la configuration Terraform
Assure-toi que le **nom du template** est bien correct dans ton fichier `.tf` :  
```hcl
clone = "debian-template"
```
Si le nom est mal orthographié ou différent dans Proxmox, Terraform ne pourra pas le trouver.

Essaie ces étapes et dis-moi si le problème persiste. 🚀