# this command is used to authenticate terraform to your Google Cloud Account
############## gcloud auth application-default login ##########


resource "google_storage_bucket" "dev-bucket" {
  name          = "development-bucket-kl"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}