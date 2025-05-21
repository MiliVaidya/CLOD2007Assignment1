provider "google" {
  project = "elegant-theorem-459119-i9"
  region  = "us-central1"
}

#resource "google_storage_bucket" "static_site" {
#   name          = "gcp-terra-bucket"
#   location      = "US"
#   force_destroy = true

 #  website {
 #  main_page_suffix = "index.html"
 #   not_found_page   = "404.html"
 # }
# }

resource "google_storage_bucket_iam_binding" "public_rule" {
  bucket = google_storage_bucket.static_site.name

  role = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
}

resource "google_storage_bucket_object" "index_html" {
  name         = "index.html"
  bucket       = google_storage_bucket.static_site.name
  source       = "index.html"
  content_type = "text/html"
}
