module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = var.project_id
  prefix        = "test-sa"
  names         = var.name
  project_roles = ["roles/cloudfunctions.developer",
                   "roles/bigquery.dataEditor",
                   "roles/dataflow.admin",
                   "roles/dataproc.admin",
                   "roles/storage.admin",
                   "project-foo=>roles/viewer",
                   "project-spam=>roles/storage.objectViewer",
  ]
}