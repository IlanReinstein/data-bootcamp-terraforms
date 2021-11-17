project_id = "de-capstone-ir"
region     = "us-central1"
location     = "us-central1-a"

#GKE
gke_num_nodes = 2
machine_type  = "n1-standard-1"

#CloudSQL
instance_name     = "ir-db-capstone-1"
database_version  = "POSTGRES_12"
instance_tier     = "db-f1-micro"
disk_space        = 10
database_name     = "purchases"
db_username       = "admin-1"
db_password       = "c4p5t0n3"

#Dataproc Cluster
#cluster_name = "capstone_cluster"
#GCS
raw_name = "capstone-ir-raw-data"
stage_name = "capstone-ir-stage-data"
