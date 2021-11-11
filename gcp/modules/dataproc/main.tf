// Dataproc Cluster
resource "google_dataproc_cluster" "capstone-cluster" {
  name   = var.cluster_name
  region = var.region
}
