resource "proxmox_vm_qemu" "minerva-node-1" {

  # SECTION General Settings
  name        = "minerva-node-1"
  desc        = "terrform hadoop node provision"
  agent       = 1
  target_node = "mndrforge01"
  vmid        = "221"
  # !SECTION

  # SECTION Template Settings
  clone      = "ubuntu-noble-hadoop-base"
  full_clone = true
  # !SECTION

  # SECTION Boot Process
  onboot           = true
  startup          = ""
  automatic_reboot = false
  # !SECTION

  # SECTION Hardware Settings
  qemu_os  = "other"
  bios     = "seabios"
  cores    = 16
  sockets  = 1
  cpu_type = "host"
  memory   = 32768
  balloon  = 32768
  # !SECTION

  # SECTION Network Settings
  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
  # !SECTION

  # SECTION Disk Settings
  scsihw = "virtio-scsi-single"

  disks {
    ide {
      ide0 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
    virtio {
      virtio0 {
        disk {
          storage   = "local-lvm"
          size      = "64G"
          iothread  = true
          replicate = false
        }
      }
    }
  }
  # !SECTION

  # SECTION Cloud Init Settings
  ipconfig0  = var.ip_config
  nameserver = var.dns_nameserver
  ciuser     = var.user_name
  sshkeys    = var.public_ssh_key
  # !SECTION
}

resource "proxmox_vm_qemu" "minerva-node-2" {

  # SECTION General Settings
  name        = "minerva-node-2"
  desc        = "terrform hadoop node provision"
  agent       = 1
  target_node = "mndrforge01"
  vmid        = "222"
  # !SECTION

  # SECTION Template Settings
  clone      = "ubuntu-noble-hadoop-base"
  full_clone = true
  # !SECTION

  # SECTION Boot Process
  onboot           = true
  startup          = ""
  automatic_reboot = false
  # !SECTION

  # SECTION Hardware Settings
  qemu_os  = "other"
  bios     = "seabios"
  cores    = 16
  sockets  = 1
  cpu_type = "host"
  memory   = 32768
  balloon  = 32768
  # !SECTION

  # SECTION Network Settings
  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
  # !SECTION

  # SECTION Disk Settings
  scsihw = "virtio-scsi-single"

  disks {
    ide {
      ide0 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
    virtio {
      virtio0 {
        disk {
          storage   = "local-lvm"
          size      = "64G"
          iothread  = true
          replicate = false
        }
      }
    }
  }
  # !SECTION

  # SECTION Cloud Init Settings
  ipconfig0  = var.ip_config
  nameserver = var.dns_nameserver
  ciuser     = var.user_name
  sshkeys    = var.public_ssh_key
  # !SECTION
}

resource "proxmox_vm_qemu" "minerva-node-3" {

  # SECTION General Settings
  name        = "minerva-node-3"
  desc        = "terrform hadoop node provision"
  agent       = 1
  target_node = "mndrforge01"
  vmid        = "223"
  # !SECTION

  # SECTION Template Settings
  clone      = "ubuntu-noble-hadoop-base"
  full_clone = true
  # !SECTION

  # SECTION Boot Process
  onboot           = true
  startup          = ""
  automatic_reboot = false
  # !SECTION

  # SECTION Hardware Settings
  qemu_os  = "other"
  bios     = "seabios"
  cores    = 16
  sockets  = 1
  cpu_type = "host"
  memory   = 32768
  balloon  = 32768
  # !SECTION

  # SECTION Network Settings
  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
  # !SECTION

  # SECTION Disk Settings
  scsihw = "virtio-scsi-single"

  disks {
    ide {
      ide0 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
    virtio {
      virtio0 {
        disk {
          storage   = "local-lvm"
          size      = "64G"
          iothread  = true
          replicate = false
        }
      }
    }
  }
  # !SECTION

  # SECTION Cloud Init Settings
  ipconfig0  = var.ip_config
  nameserver = var.dns_nameserver
  ciuser     = var.user_name
  sshkeys    = var.public_ssh_key
  # !SECTION
}
