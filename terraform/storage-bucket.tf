
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = var.sa_user_id
  description        = "static access key for object storage"
}

resource "yandex_storage_bucket" "tf-state-bucked" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket     = "tf-state-bucked"
}

