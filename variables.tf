variable "proxmox_api_url" {
    type = string
    description = "Proxmox API URL Host"
}

variable "proxmox_api_token_id" {
    type = string
    description = "Proxmox API Token ID"
}

variable "proxmox_api_token_secret" {
    type = string
    description = "Proxmox API Token Secret"
}

variable "vm_password" {
    type = string
    description = "Virtual Machine Root Password"
}

variable "vm_public_key" {
  type = string
  description = "Virtual Machine Default SSH Public Key"
}
