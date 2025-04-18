resource "proxmox_vm_qemu" "noble-v3" {

  # SECTION General Settings
  name        = "noble-v3"
  desc        = "terrform noble provision"
  agent       = 1
  target_node = "mndrforge01"
  vmid        = "202"
  # !SECTION

  # SECTION Template Settings
  clone      = "ubuntu-noble-base"
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
  cores    = 4
  sockets  = 1
  cpu_type = "host"
  memory   = 4096
  balloon  = 4096
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
          size      = "32G"
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
