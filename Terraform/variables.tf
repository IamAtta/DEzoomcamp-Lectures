variable "credentials" {
    description = "My Credentials"
    default = "./keys/creds.json"
}

variable "bq_dataset_name" {
    description = "My BigQuery Dataset Name"
    default = "demo_dataset"
}

variable "gcs_storage_class" {
    description = "My Storage Class"
    default = "STANDARD"
}

variable "gcs_bucket_name" {
    description = "My google cloud storage Name"
    default = "terraform-demo-413505-terra-bucket"
}

variable "location" {
    description = "Project Location"
    default = "EU"
}

variable "region" {
    description = "region"
    default = "europe-west2"
}

variable "project" {
    description = "Project"
    default = "terraform-demo-413505"
}