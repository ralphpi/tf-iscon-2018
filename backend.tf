terraform {
  backend "gcs" {
    bucket  = "{$Bucket}"
    prefix  = "state"
    project = "${project}"
  }
}
