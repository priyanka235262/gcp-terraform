resource "google_storage_bucket" "my_bucket"{
name = "my_bucket"
region= "us-central1"
uniform_bucket_level_access = true
}

#create a pincipal account with read/write permission
acl {
 entity = "user:pincipal_account@example.com
ROLE = "READ_WRITE"
}
}
#creating a storage bucket with lifecycle policy
provider "google"{
credentails = "file/path/to/your/services-keys.json"
project = "my_project"
region = "us-central1"
uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_bucket"{
name = "my_bucket"
location = "us-central1"
}
lifecycle{
prevent_storage = true

#GCS bucket with a service account having specific permissions:
provider "google" {
  project     = "your-project-id"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "my-bucket-name"
  location      = "us"
  storage_class = "STANDARD"
}

resource "google_service_account" "my_service_account" {
  account_id   = "my-service-account-id"
  display_name = "My Service Account"
}

resource "google_service_account_key" "my_service_account_key" {
  project     = google_service_account.my_service_account.project
  service_account_id = google_service_account.my_service_account.account_id
  private_key_type = "TYPE_RSA256"
}

resource "google_storage_bucket_acl" "my_bucket_acl" {
  bucket = google_storage_bucket.my_bucket.name

  role = "OWNER"
  entity = google_service_account.my_service_account.email_address
}
