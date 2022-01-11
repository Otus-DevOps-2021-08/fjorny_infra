provider "yandex" {
  version = "~>0.35"
  token  = var.service_account_key_file
  cloud_id = var.cloud_id
  folder_id = var.folder_id
  zone = var.zone
}

module "db" {
  source          = "./modules/db"
  public_key_path = var.public_key_path
  private_key_path = var.private_key_path
  image_id   = var.image_id
  subnet_id       = var.subnet_id
}

module "app" {
  source          = "./modules/app"
  public_key_path = var.public_key_path
  private_key_path = var.private_key_path
  image_id  = var.image_id
  database_url    = "${module.db.external_ip_address_db}"
  subnet_id       = var.subnet_id
}


