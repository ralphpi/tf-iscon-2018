terraform {
  backend "gcs" {
    bucket  = "terraform-is-con-2018"
    prefix  = "terraform/state"
    project = "is-con-terraform"
  }
}