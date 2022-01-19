variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  default ="ru-central1-a"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "service_account_key_file" {
  description = "service key"
}
variable "image_id" {
  description = "image base reddit"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "private_key_path" {
  description = "Path to prv key ssh"
}

variable app_disk_image {
description = "Disk image for reddit app"
default = "reddit-app-base"
}

variable db_disk_image {
description = "Disk image for reddit db"
default = "reddit-db-base"
}