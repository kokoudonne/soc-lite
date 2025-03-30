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
│