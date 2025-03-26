### 🚀 **Roadmap d’installation de Terraform avec Proxmox pour le provisionnement**  

L’objectif est d’utiliser **Terraform** pour provisionner des machines virtuelles sur **Proxmox**, en automatisant la création et la configuration des VM.

---

## **1️⃣ Pré-requis**
Avant de commencer, assure-toi d’avoir :  
✅ Un serveur **Proxmox** installé et fonctionnel.  
✅ Un **accès SSH** au serveur Proxmox.  
✅ Terraform installé sur ta machine.  
✅ Un **template cloud-init** sous Proxmox (Ubuntu/Debian).  

---

## **2️⃣ Installation de Terraform**
📌 **Sur ta machine locale (Linux/macOS/Windows WSL)**  
### 📍 **Télécharger et installer Terraform**
```bash
# Télécharger Terraform
wget https://releases.hashicorp.com/terraform/1.7.2/terraform_1.7.2_linux_amd64.zip

# Décompresser et déplacer l’exécutable
unzip terraform_1.7.2_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# Vérifier l'installation
terraform -version
```

---

## **3️⃣ Configurer l'accès à Proxmox**
Terraform va se connecter à Proxmox via l'API, il faut donc :  
✅ **Créer un utilisateur Terraform** dans Proxmox.  
✅ **Générer un token API** pour l’authentification.  

### 📍 **Créer un utilisateur Terraform sur Proxmox**
1. Connecte-toi à l’interface **Proxmox**.  
2. Va dans **Datacenter → Permissions → Users**.  
3. Crée un utilisateur **terraform@pam**.  

### 📍 **Créer un Token API pour Terraform**
1. Va dans **Datacenter → API Tokens**.  
2. Crée un **token API** pour l’utilisateur `terraform@pam`.  
3. Copie le **token ID** et le **secret** pour l'utiliser dans Terraform.  

### 📍 **Définir les permissions de Terraform**
Ajoute ces permissions au compte `terraform@pam` :  
✅ **Datacenter** → `VM.Allocate, Sys.Modify, Datastore.AllocateSpace, Pool.Allocate`  
✅ **Proxmox Node** → `Sys.Modify, VM.Allocate`  
✅ **VMs** → `VM.PowerMgmt, VM.Config.Disk, VM.Config.CDROM, VM.Monitor`  

---

## **4️⃣ Créer un fichier Terraform pour Proxmox**
📌 On va utiliser le **provider Proxmox** dans Terraform.

### 📍 **Créer un dossier pour le projet**
```bash
mkdir terraform-proxmox
cd terraform-proxmox
```

### 📍 **Initialiser un fichier de configuration Terraform**
Crée un fichier `main.tf` avec :  

```hcl
terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "~> 2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://192.168.1.10:8006/api2/json"
  pm_api_token_id = "terraform@pam!my-token"
  pm_api_token_secret = "mon-secret"
  pm_tls_insecure = true
}
```
📌 **Remplace `192.168.1.10` par l’IP de ton serveur Proxmox.**  
📌 **Remplace `my-token` et `mon-secret` par tes identifiants API.**  

---

## **5️⃣ Provisionner une VM avec Terraform**
On va créer une **VM Ubuntu à partir d’un template cloud-init**.

Ajoute ceci à `main.tf` :

```hcl
resource "proxmox_vm_qemu" "vm1" {
  name        = "vm-terraform"
  target_node = "pve"
  clone       = "ubuntu-cloudinit-template"

  cpu     = 2
  memory  = 2048
  sockets = 1
  cores   = 2

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  disk {
    size    = "20G"
    type    = "scsi"
    storage = "local-lvm"
  }

  os_type    = "cloud-init"
  ciuser     = "terraform"
  cipassword = "SuperMotDePasse"
}
```
📌 **Remplace `ubuntu-cloudinit-template` par le nom de ton template Proxmox.**  
📌 **Modifie la RAM, le CPU, le disque selon tes besoins.**  

---

## **6️⃣ Déployer la VM avec Terraform**
1️⃣ **Initialiser Terraform**
```bash
terraform init
```

2️⃣ **Planifier le déploiement**
```bash
terraform plan
```
💡 **Cela te montre ce que Terraform va créer/modifier.**

3️⃣ **Appliquer le déploiement**
```bash
terraform apply -auto-approve
```
✔️ Une VM est maintenant créée sur Proxmox ! 🎉

---

## **7️⃣ Automatiser la configuration avec Ansible (Facultatif mais recommandé)**
Après avoir provisionné la VM, Terraform peut **appeler Ansible** pour installer Docker, configurer SSH, etc.

Ajoute ceci à `main.tf` :
```hcl
resource "null_resource" "ansible_provisioning" {
  depends_on = [proxmox_vm_qemu.vm1]

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.yml setup.yml"
  }
}
```

📌 **Crée un fichier `inventory.yml`** avec :  
```yaml
vm-terraform ansible_host=192.168.1.50 ansible_user=terraform ansible_ssh_pass=SuperMotDePasse
```

📌 **Crée un playbook `setup.yml`** pour installer Docker par exemple :  
```yaml
- name: Configurer VM Terraform
  hosts: vm-terraform
  become: yes
  tasks:
    - name: Installer les mises à jour
      apt:
        update_cache: yes

    - name: Installer Docker
      apt:
        name: docker.io
        state: present
```

Lance la configuration avec :
```bash
terraform apply
```
✔️ Maintenant, Terraform **crée la VM** et Ansible **configure tout automatiquement** ! 🚀

---

## **8️⃣ Nettoyer les ressources**
Si tu veux supprimer la VM :
```bash
terraform destroy -auto-approve
```

---

## **🎯 Conclusion**
✅ **Terraform** automatise le provisionnement de l’infrastructure sur **Proxmox**.  
✅ **Proxmox API** permet de créer, gérer et détruire des VM sans intervention manuelle.  
✅ **Ansible** peut être utilisé pour la configuration avancée après le déploiement.  

### **🛠️ Prochaines améliorations**
- 🔹 Intégrer Terraform avec **Proxmox + Kubernetes**.  
- 🔹 Gérer plusieurs VMs avec **un seul fichier Terraform**.  
- 🔹 Ajouter **Terraform Cloud** pour une gestion centralisée.
