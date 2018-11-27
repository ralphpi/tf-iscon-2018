resource "google_sourcerepo_repository" "is-con-repo" {
  name = "is-con-2018"
  project = "${google_project.quiz-project.name}"
  depends_on = ["google_project.quiz-project", "google_project_services.project_apis"]
}


resource "google_project" "quiz-project" {
  name = "${var.project-id}"
  project_id = "${var.project-id}"
  folder_id     = "793985541337"
  billing_account = "0122DA-34AF6E-7EFE04"
  
  app_engine {
    location_id = "us-east1"
  }
}

resource "google_project_services" "project_apis" {
  project = "${google_project.quiz-project.name}"
  services   = ["compute.googleapis.com", "firebase.googleapis.com", "sourcerepo.googleapis.com", "deploymentmanager.googleapis.com","cloudapis.googleapis.com", "firestore.googleapis.com", "cloudfunctions.googleapis.com", "cloudresourcemanager.googleapis.com"]
  depends_on = ["google_project.quiz-project"]
}