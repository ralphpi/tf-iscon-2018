terraform {
  backend "gcs" {
    bucket  = "iscon-2018"
    prefix  = "state"
    project = "iscon-2018-223919"
  }
}