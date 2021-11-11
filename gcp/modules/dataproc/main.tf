// Dataproc Cluster
resource "google_dataproc_cluster" "capstone-cluster" {
  name   = var.cluster_name
  region = local.region_id
}
