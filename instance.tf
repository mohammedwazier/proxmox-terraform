resource "proxmox_lxc" "kubernetes_servers" {
    target_node = "home"
    hostname = "lxc-kubernetes_servers"
    ostemplate = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
    password = var.vm_password
    unprivileged = true

    ostype = "ubuntu"

    hastate = "started"

    ssh_public_keys = var.vm_public_key

    rootfs {
        storage = "local-lvm"
        size = "8G"
    }

    network {
        name = "eth0"
        bridge = "vmbr0"
        ip = "dhcp"
    }

}
