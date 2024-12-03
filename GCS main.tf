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
