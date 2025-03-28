resource "proxmox_vm_qemu" "thehive_vm" {
  name        = "thehive_vm"
  target_node = "pve02"  # Remplace par le bon nœud
  clone       = "debian-template"  # Assure-toi que ce template a Cloud-Init activé
  full_clone  = true

  cpu     = "host"
  cores   = 2
  sockets = 1
  memory  = 2048  # 4 Go de RAM

  disk {
    size    = "50G"
    type    = "scsi"
    storage = "diskext4to"  # Vérifie le nom exact du stockage
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"  # Vérifie le bridge réseau utilisé sur ton Proxmox
  }

  os_type = "cloud-init"

  ipconfig0 = "ip=192.168.1.100/24,gw=192.168.1.1"  # Remplace par l'IP et la passerelle correcte

  sshkeys = <<EOT
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzFD9quYfNgk1UV1cEeUnrz3ZZEC0i0Bx8O8whT+ri3Ywv3pF/cuSiVAV9eiwVq95bxVk7311GawxDh13e+hodT4KzE1kgPusPXv8c4d08ZRgebhHRm48WgH1fJmrRiyhzTNs9rAoTG3p6NauVwNhKjnW1kPtB7UVC/5aD24idtF9JC9TY25J4VOrGfKW0tkdUxPxTKCIbpeIKvu/lz3wxKsR6fXNXBe+54F+UrZY9FaW1/toAq7Kfzp0gXnH2aD1cUAIhC41ZvtJa45D0WO9/r8RQ8W4AJOWAApG/MDwoGdcbstCCHMVCXAVrQXu64c0Wfc3UDLxIHmKKvVYZMVQ7LDOm5P5j0/ED3eqz5fPX+yd2MiolrP7z0+li7IcPPeCCUq6xF2cZZhtQdqIKbmRoyFrLpoG6Oivmn70cN8XpawlrihIbPZQzT3Mu4qQT3V867YdK84n74x0//RJE2z4Zi6tfa0PZj42iaPyDWWT+n7BCUUQM9B8IoVADv+Chx1c= kokou@fcconsulting_pc
  EOT

  ciuser     = "admin"  # Spécifie un utilisateur Cloud-Init si nécessaire
  cipassword = "SecurePassword123!"  # Optionnel, à éviter pour la sécurité (utilise plutôt les clés SSH)
}
