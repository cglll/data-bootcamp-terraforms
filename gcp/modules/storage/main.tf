resource "google_storage_bucket" "your_bucket"{
    name=var.bucket
    force_destroy = true
    location=var.location
    project=var.project_id
    storage_class = "STANDARD"
}

resource "google_storage_bucket_iam_member" "bucket_creator"{
    bucket="${google_storage_bucket.your_bucket.name}"
    role="roles/storage.objectAdmin"
    member="serviceAccount:airflow@data-bootcamp-terraforms.iam.gserviceaccount.com"
}